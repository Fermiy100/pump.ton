# 🚀 Pump Ton - Modern TON Blockchain Social Trading Platform

<div align="center">
  <img src="https://via.placeholder.com/400x200/3B82F6/FFFFFF?text=Pump+Ton" alt="Pump Ton Logo" width="400" height="200">
  
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![Node.js Version](https://img.shields.io/badge/node-%3E%3D18.0.0-brightgreen)](https://nodejs.org/)
  [![TypeScript](https://img.shields.io/badge/TypeScript-5.3+-blue)](https://www.typescriptlang.org/)
  [![React](https://img.shields.io/badge/React-18+-61dafb)](https://reactjs.org/)
  [![TON](https://img.shields.io/badge/TON-Blockchain-0098EA)](https://ton.org/)
</div>

## 🌟 Overview

**Pump Ton** is a modern, interactive, and social-centric web service built for the TON blockchain ecosystem. It aims to surpass existing platforms like pump.fun in functionality and user experience while adapting to the unique needs of the TON community.

### ✨ Key Features

- 🪙 **Token Creation & Management**: Create and manage TON-based tokens with smart contracts
- 📊 **Real-time Trading**: Live orderbook, charts, and advanced trading interface
- 🎥 **Live Streaming**: Video streaming with interactive chat and TON donations
- 📈 **Analytics & Charts**: Comprehensive trading analytics and market data visualization
- 🎮 **Gamification**: Achievement system, badges, and reward mechanisms
- 🚀 **Boost System**: Paid promotion for tokens and content
- 🔗 **TON Integration**: Seamless integration with TON ecosystem wallets
- 📱 **Mobile-First**: Responsive design optimized for all devices

## 🏗️ Architecture

### Frontend (React SPA)
- **React 18** with TypeScript for type safety
- **TanStack Query** for server state management
- **Tailwind CSS** with custom design system
- **Framer Motion** for smooth animations
- **Socket.IO** for real-time updates
- **Recharts** for data visualization

### Backend (Node.js/Express)
- **Express.js** with TypeScript
- **PostgreSQL** with Prisma ORM
- **Redis** for caching and sessions
- **Socket.IO** for WebSocket connections
- **JWT** authentication with TON Connect
- **Multer + Sharp** for file processing

### Blockchain Integration
- **TON Network** direct integration
- **Smart Contracts** for token management
- **TON Connect** for wallet authentication
- **Real-time** transaction monitoring

## 🚀 Quick Start

### Prerequisites

- **Node.js** >= 18.0.0
- **npm** >= 9.0.0
- **PostgreSQL** 15+
- **Redis** 7+
- **Docker** (optional)

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/Fermiy100/pump.ton.git
cd pump.ton
```

2. **Install dependencies**
```bash
npm install
```

3. **Set up environment variables**
```bash
cp host/.env.production .env
# Edit .env with your configuration
```

4. **Set up the database**
```bash
cd server
npx prisma migrate dev
npx prisma generate
```

5. **Start development servers**
```bash
npm run dev
```

This will start:
- Frontend: http://localhost:3000
- Backend: http://localhost:5000
- Database: PostgreSQL on port 5432
- Cache: Redis on port 6379

## 🐳 Docker Deployment

### Quick Start with Docker

```bash
# Build and start all services
docker-compose up -d

# Run database migrations
docker-compose exec server npx prisma migrate deploy

# Seed the database
docker-compose exec server npx prisma db seed
```

### Services Included
- **Frontend**: React app with Nginx
- **Backend**: Node.js API server
- **Database**: PostgreSQL
- **Cache**: Redis
- **Proxy**: Nginx reverse proxy
- **Streaming**: RTMP/HLS server

## 📁 Project Structure

```
pump-ton/
├── client/                 # React frontend
│   ├── src/
│   │   ├── components/     # Reusable UI components
│   │   ├── pages/         # Page components
│   │   ├── hooks/         # Custom React hooks
│   │   ├── services/      # API services
│   │   ├── utils/         # Utility functions
│   │   ├── types/         # TypeScript types
│   │   └── styles/        # CSS and styling
│   └── package.json
├── server/                # Node.js backend
│   ├── src/
│   │   ├── controllers/   # Route controllers
│   │   ├── services/      # Business logic
│   │   ├── middleware/    # Express middleware
│   │   ├── routes/        # API routes
│   │   └── utils/         # Utility functions
│   ├── prisma/            # Database schema
│   └── package.json
├── shared/                # Shared code
├── docs/                  # Documentation
├── host/                  # Hosting files
│   ├── railway/           # Railway deployment
│   ├── docker/            # Docker deployment
│   └── .env.production    # Environment template
├── docker-compose.yml     # Docker configuration
└── package.json          # Root package.json
```

## 🔧 Development

### Available Scripts

```bash
# Development
npm run dev              # Start both frontend and backend
npm run dev:client       # Start frontend only
npm run dev:server       # Start backend only

# Building
npm run build           # Build frontend for production
npm start              # Start production server

# Testing
npm test               # Run all tests
npm run test:watch     # Run tests in watch mode
npm run test:coverage  # Run tests with coverage

# Code Quality
npm run lint           # Run ESLint
npm run lint:fix       # Fix ESLint errors

# Database
npm run db:migrate     # Run database migrations
npm run db:generate    # Generate Prisma client
npm run db:seed        # Seed the database
```

### Environment Variables

Create a `.env` file in the root directory:

```env
# Server Configuration
PORT=5000
NODE_ENV=development

# Database
DATABASE_URL=postgresql://user:password@localhost:5432/pumpton

# Redis
REDIS_URL=redis://localhost:6379

# TON Configuration
TON_RPC_URL=https://toncenter.com/api/v2/jsonRPC
TON_API_KEY=your_ton_api_key
TON_WALLET_PRIVATE_KEY=your_wallet_private_key

# JWT
JWT_SECRET=your_jwt_secret

# File Upload
UPLOAD_DIR=uploads
MAX_FILE_SIZE=10485760

# Streaming
STREAMING_SERVER_URL=http://localhost:8080
```

## 📊 API Documentation

### Authentication
- `POST /api/auth/connect` - Connect TON wallet
- `POST /api/auth/refresh` - Refresh JWT token
- `POST /api/auth/logout` - Logout user

### Tokens
- `GET /api/tokens` - Get all tokens
- `POST /api/tokens` - Create new token
- `GET /api/tokens/:address` - Get token details
- `GET /api/tokens/:address/analytics` - Get token analytics
- `GET /api/tokens/:address/trades` - Get token trades

### Users
- `GET /api/users/profile` - Get user profile
- `PUT /api/users/profile` - Update profile
- `GET /api/users/:address` - Get user by address

### Streams
- `GET /api/streams` - Get all streams
- `POST /api/streams` - Create stream
- `GET /api/streams/:id` - Get stream details
- `POST /api/streams/:id/chat` - Send chat message

## 🚀 Deployment

### Railway (Recommended)
```bash
cd host
./railway-deploy.bat
```

### Docker
```bash
cd host
docker-compose up -d
```

### Manual Deployment
See [host/README.md](host/README.md) for detailed deployment instructions.

## 🧪 Testing

```bash
# Run all tests
npm test

# Run specific test suites
npm run test:unit        # Unit tests
npm run test:integration # Integration tests
npm run test:e2e        # End-to-end tests

# Test coverage
npm run test:coverage
```

## 📈 Monitoring

### Metrics
- Application performance
- Database query performance
- Real-time connection counts
- Error rates and response times

### Logging
- Structured logging with Winston
- Error tracking and alerting
- Audit logs for security events

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

### Development Guidelines
- Follow TypeScript best practices
- Write comprehensive tests
- Update documentation
- Follow the code style guide
- Ensure all tests pass

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Documentation**: [docs/](docs/)
- **Issues**: [GitHub Issues](https://github.com/Fermiy100/pump.ton/issues)
- **Discussions**: [GitHub Discussions](https://github.com/Fermiy100/pump.ton/discussions)
- **Discord**: [Join our Discord](https://discord.gg/pumpton)
- **Telegram**: [Join our Telegram](https://t.me/pumpton)

## 🙏 Acknowledgments

- **TON Foundation** for the blockchain infrastructure
- **React and Node.js** communities
- **Open source contributors**
- **Community supporters**

## 🗺️ Roadmap

### Phase 1 (Current)
- ✅ Core trading functionality
- ✅ Token creation and management
- ✅ Basic social features
- ✅ Real-time updates

### Phase 2 (Q1 2025)
- 🔄 Mobile app release
- 🔄 Advanced trading tools
- 🔄 NFT marketplace
- 🔄 DeFi integrations

### Phase 3 (Q2 2025)
- 📋 Cross-chain support
- 📋 Advanced analytics
- 📋 AI-powered features
- 📋 Enterprise solutions

---

<div align="center">
  <strong>Built with ❤️ for the TON community</strong>
  
  [Website](https://pumpton.com) • [Documentation](docs/) • [Discord](https://discord.gg/pumpton) • [Twitter](https://twitter.com/pumpton)
</div>