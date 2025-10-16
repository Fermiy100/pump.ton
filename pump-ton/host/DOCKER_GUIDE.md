# 🐳 Docker Deployment Guide

## Quick Start with Docker

### Prerequisites
- Docker Desktop installed
- Docker Compose 2.0+

### Deploy Pump Ton with Docker

1. **Navigate to host directory:**
```cmd
cd C:\Users\User\Downloads\pump-ton\host
```

2. **Start all services:**
```cmd
docker-compose up -d
```

3. **Check status:**
```cmd
docker-compose ps
```

4. **View logs:**
```cmd
docker-compose logs -f
```

### Services Included
- **PostgreSQL**: Database on port 5432
- **Redis**: Cache on port 6379
- **Backend**: API server on port 5000
- **Frontend**: React app on port 3000

### Access Your Application
- Frontend: http://localhost:3000
- Backend API: http://localhost:5000
- Database: localhost:5432
- Redis: localhost:6379

### Useful Commands

```cmd
# Stop all services
docker-compose down

# Restart services
docker-compose restart

# View logs
docker-compose logs -f backend

# Execute commands in containers
docker-compose exec backend npx prisma migrate deploy

# Remove all data
docker-compose down -v
```

### Environment Variables
Update environment variables in `docker-compose.yml`:
- `JWT_SECRET`: Your JWT secret
- `TON_API_KEY`: Your TON API key
- `CORS_ORIGIN`: Your frontend domain

### Production Deployment
For production deployment:
1. Use external database (AWS RDS, etc.)
2. Use external Redis (AWS ElastiCache, etc.)
3. Set up reverse proxy (Nginx)
4. Configure SSL certificates
5. Set up monitoring and backups
