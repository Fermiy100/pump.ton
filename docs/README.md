# 📚 Pump Ton Documentation

## 🚀 Overview

Pump Ton is a modern, interactive, and social-centric web service built for the TON blockchain ecosystem. It aims to surpass existing platforms like pump.fun in functionality and user experience while adapting to the unique needs of the TON community.

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

## 🔧 Development

### Prerequisites
- Node.js >= 18.0.0
- npm >= 9.0.0
- PostgreSQL 15+
- Redis 7+

### Installation
```bash
# Clone repository
git clone https://github.com/Fermiy100/pump.ton.git
cd pump.ton

# Install dependencies
npm install

# Set up environment variables
cp host/.env.production .env
# Edit .env with your configuration

# Set up database
cd server
npx prisma migrate dev
npx prisma generate

# Start development servers
npm run dev
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

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Documentation**: [docs/](docs/)
- **Issues**: [GitHub Issues](https://github.com/Fermiy100/pump.ton/issues)
- **Discussions**: [GitHub Discussions](https://github.com/Fermiy100/pump.ton/discussions)
- **Discord**: [Join our Discord](https://discord.gg/pumpton)
- **Telegram**: [Join our Telegram](https://t.me/pumpton)

---

🎉 **Built with ❤️ for the TON community**
