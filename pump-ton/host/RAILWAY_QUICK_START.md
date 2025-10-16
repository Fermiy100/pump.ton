# 🚀 Railway Quick Start Guide - Pump Ton

## ⚡ Быстрый старт (5 минут)

### 1. Установка Railway CLI
```cmd
npm install -g @railway/cli
```

### 2. Авторизация
```cmd
railway login
```

### 3. Переход в папку host
```cmd
cd C:\Users\User\Downloads\pump-ton\host
```

### 4. Автоматическое развертывание
```cmd
railway-deploy.bat
```

### 5. Настройка переменных
После развертывания установите в Railway Dashboard:
- `TON_API_KEY` - ваш TON API ключ
- `CORS_ORIGIN` - домен вашего frontend

## 📋 Пошаговая инструкция

### Шаг 1: Подготовка
1. Создайте аккаунт на [railway.app](https://railway.app)
2. Установите Railway CLI
3. Скопируйте переменные окружения:
```cmd
copy .env.production ..\.env
```

### Шаг 2: Развертывание
1. Авторизуйтесь: `railway login`
2. Инициализируйте проект: `railway init`
3. Разверните: `railway up`

### Шаг 3: Настройка сервисов
1. **Backend**: Root Directory: `server`
2. **Database**: Добавьте PostgreSQL
3. **Redis**: Добавьте Redis

### Шаг 4: Переменные окружения
Установите в Railway Dashboard:
```env
NODE_ENV=production
PORT=5000
JWT_SECRET=your_super_secret_jwt_key_change_in_production
JWT_REFRESH_SECRET=your_refresh_secret_key
TON_API_KEY=your_ton_api_key_here
TON_NETWORK=mainnet
CORS_ORIGIN=https://your-frontend-domain.railway.app
```

### Шаг 5: Миграции базы данных
```cmd
railway run npx prisma migrate deploy
railway run npx prisma generate
```

## 🔧 Полезные команды

```cmd
# Просмотр логов
railway logs

# Статус сервисов
railway status

# Подключение к базе данных
railway connect postgres

# Перезапуск сервиса
railway restart

# Просмотр переменных
railway variables
```

## 🆘 Решение проблем

### Ошибка подключения к БД
```cmd
railway run npx prisma migrate deploy
```

### Ошибка сборки
```cmd
railway logs --service backend
```

### CORS ошибки
Обновите `CORS_ORIGIN` в переменных окружения

## 💰 Стоимость
- **Бесплатно**: 500ч/месяц, PostgreSQL, Redis
- **Pro**: $5/месяц для неограниченного использования

## 🌐 Доступ к приложению
После развертывания получите домен вида:
`https://pump-ton-backend-production.up.railway.app`

---

🎉 **Готово!** Ваш Pump Ton работает на Railway!
