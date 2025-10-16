import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import morgan from 'morgan';
import dotenv from 'dotenv';
import { createServer } from 'http';
import { Server } from 'socket.io';

// Load environment variables
dotenv.config();

const app = express();
const server = createServer(app);
const io = new Server(server, {
  cors: {
    origin: process.env.CORS_ORIGIN || "http://localhost:3000",
    methods: ["GET", "POST"]
  }
});

const PORT = process.env.PORT || 5000;

// Middleware
app.use(helmet());
app.use(cors({
  origin: process.env.CORS_ORIGIN || "http://localhost:3000",
  credentials: true
}));
app.use(morgan('combined'));
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true }));

// Routes
app.get('/health', (req, res) => {
  res.json({ 
    status: 'OK', 
    timestamp: new Date().toISOString(),
    service: 'Pump Ton API'
  });
});

app.get('/api', (req, res) => {
  res.json({ 
    message: 'Welcome to Pump Ton API',
    version: '1.0.0',
    endpoints: {
      auth: '/api/auth',
      tokens: '/api/tokens',
      users: '/api/users',
      streams: '/api/streams'
    }
  });
});

// Socket.IO connection handling
io.on('connection', (socket) => {
  console.log('User connected:', socket.id);

  socket.on('disconnect', () => {
    console.log('User disconnected:', socket.id);
  });

  // Token price updates
  socket.on('subscribe-token', (tokenAddress) => {
    socket.join(`token-${tokenAddress}`);
    console.log(`User ${socket.id} subscribed to token ${tokenAddress}`);
  });

  // Stream chat
  socket.on('join-stream', (streamId) => {
    socket.join(`stream-${streamId}`);
    console.log(`User ${socket.id} joined stream ${streamId}`);
  });

  socket.on('stream-message', (data) => {
    socket.to(`stream-${data.streamId}`).emit('new-message', data);
  });
});

// Error handling middleware
app.use((err: any, req: express.Request, res: express.Response, next: express.NextFunction) => {
  console.error(err.stack);
  res.status(500).json({ 
    error: 'Something went wrong!',
    message: process.env.NODE_ENV === 'development' ? err.message : 'Internal server error'
  });
});

// 404 handler
app.use('*', (req, res) => {
  res.status(404).json({ error: 'Route not found' });
});

server.listen(PORT, () => {
  console.log(`🚀 Pump Ton API server running on port ${PORT}`);
  console.log(`📊 Health check: http://localhost:${PORT}/health`);
  console.log(`🔗 API docs: http://localhost:${PORT}/api`);
});

export { app, io };
