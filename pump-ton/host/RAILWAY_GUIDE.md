# 🚀 Railway Deployment Guide - Pump Ton

## 📋 Содержание
1. [Предварительные требования](#предварительные-требования)
2. [Установка Railway CLI](#установка-railway-cli)
3. [Создание аккаунта](#создание-аккаунта)
4. [Подготовка проекта](#подготовка-проекта)
5. [Развертывание через CLI](#развертывание-через-cli)
6. [Развертывание через Dashboard](#развертывание-через-dashboard)
7. [Настройка переменных окружения](#настройка-переменных-окружения)
8. [Настройка базы данных](#настройка-базы-данных)
9. [Настройка Redis](#настройка-redis)
10. [Запуск миграций](#запуск-миграций)
11. [Настройка домена](#настройка-домена)
12. [Мониторинг и логи](#мониторинг-и-логи)
13. [Решение проблем](#решение-проблем)
14. [Масштабирование](#масштабирование)

## 🔧 Предварительные требования

### Программное обеспечение
- **Node.js** 18.0.0 или выше
- **npm** 9.0.0 или выше
- **Git** для управления версиями
- **Railway CLI** (будет установлен)

### Аккаунты и ключи
- **Railway аккаунт** ([railway.app](https://railway.app))
- **TON API ключ** (получить на [toncenter.com](https://toncenter.com))
- **GitHub репозиторий** с кодом проекта

## 📦 Установка Railway CLI

### Windows
```cmd
npm install -g @railway/cli
```

### Linux/Mac
```bash
npm install -g @railway/cli
```

### Проверка установки
```cmd
railway --version
```

## 🔐 Создание аккаунта

1. **Перейдите на [railway.app](https://railway.app)**
2. **Нажмите "Sign Up"**
3. **Выберите способ регистрации:**
   - GitHub (рекомендуется)
   - Google
   - Email
4. **Подтвердите email** (если используете email)

## 📁 Подготовка проекта

### 1. Перейдите в папку host
```cmd
cd C:\Users\User\Downloads\pump-ton\host
```

### 2. Скопируйте переменные окружения
```cmd
copy .env.production ..\.env
```

### 3. Отредактируйте .env файл
Откройте файл `C:\Users\User\Downloads\pump-ton\.env` и настройте:

```env
# Обязательные переменные
NODE_ENV=production
PORT=5000
JWT_SECRET=your_super_secret_jwt_key_change_in_production
JWT_REFRESH_SECRET=your_refresh_secret_key
TON_API_KEY=your_ton_api_key_here
TON_NETWORK=mainnet

# Опциональные переменные
CORS_ORIGIN=https://your-frontend-domain.railway.app
STREAMING_API_KEY=your_streaming_api_key
```

## 🚀 Развертывание через CLI

### 1. Авторизация
```cmd
railway login
```

### 2. Инициализация проекта
```cmd
railway init
```

### 3. Автоматическое развертывание
```cmd
railway-deploy.bat
```

### 4. Ручное развертывание
```cmd
railway up
```

## 🌐 Развертывание через Dashboard

### 1. Создание проекта
1. Перейдите на [railway.app](https://railway.app)
2. Нажмите "New Project"
3. Выберите "Deploy from GitHub repo"
4. Подключите ваш репозиторий

### 2. Добавление сервисов

#### Backend сервис
1. Нажмите "New Service"
2. Выберите "GitHub Repo"
3. Выберите ваш репозиторий
4. Настройте:
   - **Service Name**: `pump-ton-backend`
   - **Root Directory**: `server`
   - **Build Command**: `npm install && npm run build`
   - **Start Command**: `npm run start:production`

#### База данных PostgreSQL
1. Нажмите "New Service"
2. Выберите "Database" → "PostgreSQL"
3. Railway автоматически создаст базу данных
4. Переменная `DATABASE_URL` будет установлена автоматически

#### Redis Cache
1. Нажмите "New Service"
2. Выберите "Database" → "Redis"
3. Railway автоматически создаст Redis
4. Переменная `REDIS_URL` будет установлена автоматически

## ⚙️ Настройка переменных окружения

### Через CLI
```cmd
railway variables set NODE_ENV=production
railway variables set PORT=5000
railway variables set JWT_SECRET=your_super_secret_jwt_key_change_in_production
railway variables set JWT_REFRESH_SECRET=your_refresh_secret_key
railway variables set TON_API_KEY=your_ton_api_key_here
railway variables set TON_NETWORK=mainnet
railway variables set CORS_ORIGIN=https://your-frontend-domain.railway.app
```

### Через Dashboard
1. Перейдите в ваш проект
2. Откройте настройки backend сервиса
3. Перейдите в раздел "Variables"
4. Добавьте переменные из файла `.env.production`

### Обязательные переменные
```env
NODE_ENV=production
PORT=5000
JWT_SECRET=your_super_secret_jwt_key_change_in_production
JWT_REFRESH_SECRET=your_refresh_secret_key
TON_API_KEY=your_ton_api_key_here
TON_NETWORK=mainnet
```

### Опциональные переменные
```env
CORS_ORIGIN=https://your-frontend-domain.railway.app
STREAMING_API_KEY=your_streaming_api_key
UPLOAD_DIR=uploads
MAX_FILE_SIZE=10485760
RATE_LIMIT_WINDOW_MS=900000
RATE_LIMIT_MAX_REQUESTS=100
```

## 🗄️ Настройка базы данных

### 1. Проверка подключения
```cmd
railway connect postgres
```

### 2. Запуск миграций
```cmd
railway run npx prisma migrate deploy
```

### 3. Генерация Prisma клиента
```cmd
railway run npx prisma generate
```

### 4. Создание начальных данных
```cmd
railway run npx prisma db seed
```

## 🔴 Настройка Redis

### 1. Проверка подключения
```cmd
railway connect redis
```

### 2. Тестирование Redis
```cmd
railway run redis-cli ping
```

## 🌍 Настройка домена

### 1. Получение домена Railway
Railway автоматически предоставляет домен вида:
`https://pump-ton-backend-production.up.railway.app`

### 2. Настройка пользовательского домена
1. Перейдите в настройки сервиса
2. Нажмите "Domains"
3. Добавьте ваш домен
4. Настройте DNS записи:
   ```
   Type: CNAME
   Name: your-domain.com
   Value: pump-ton-backend-production.up.railway.app
   ```

### 3. SSL сертификаты
Railway автоматически предоставляет SSL сертификаты для всех доменов.

## 📊 Мониторинг и логи

### Просмотр логов
```cmd
railway logs
```

### Просмотр логов конкретного сервиса
```cmd
railway logs --service backend
```

### Статус сервисов
```cmd
railway status
```

### Метрики через Dashboard
1. Перейдите в ваш проект
2. Откройте сервис
3. Перейдите в раздел "Metrics"
4. Просматривайте:
   - CPU использование
   - Память
   - Сетевой трафик
   - Время ответа

## 🆘 Решение проблем

### Ошибка подключения к базе данных
```cmd
# Проверьте переменную DATABASE_URL
railway variables

# Перезапустите сервис
railway restart

# Проверьте логи
railway logs --service backend
```

### Ошибка сборки
```cmd
# Проверьте логи сборки
railway logs --service backend

# Проверьте зависимости
railway run npm list

# Пересоберите проект
railway up --detach
```

### CORS ошибки
1. Обновите `CORS_ORIGIN` с правильным доменом
2. Перезапустите сервис
3. Проверьте настройки CORS в коде

### Проблемы с миграциями
```cmd
# Сброс миграций
railway run npx prisma migrate reset

# Применение миграций
railway run npx prisma migrate deploy

# Проверка статуса миграций
railway run npx prisma migrate status
```

## 📈 Масштабирование

### Горизонтальное масштабирование
1. Перейдите в настройки сервиса
2. Увеличьте количество реплик
3. Railway автоматически распределит нагрузку

### Вертикальное масштабирование
1. Обновите план подписки
2. Увеличьте ресурсы CPU/RAM
3. Перезапустите сервис

### Автоматическое масштабирование
Railway автоматически масштабирует сервисы в зависимости от нагрузки.

## 💰 Стоимость

### Бесплатный план
- 500 часов выполнения в месяц
- 1GB RAM
- 1GB дискового пространства
- PostgreSQL и Redis включены
- SSL сертификаты

### Pro план ($5/месяц)
- Неограниченное время выполнения
- Больше ресурсов CPU/RAM
- Приоритетная поддержка
- Расширенные метрики

## 🔒 Безопасность

### Переменные окружения
- Используйте сильные секреты
- Регулярно обновляйте ключи
- Никогда не коммитьте секреты

### Сетевая безопасность
- Railway обеспечивает HTTPS
- Настройте CORS правильно
- Используйте rate limiting

### Мониторинг безопасности
- Настройте алерты
- Мониторьте подозрительную активность
- Регулярно обновляйте зависимости

## 📚 Полезные команды

```cmd
# Общая информация
railway whoami
railway status
railway logs

# Управление проектом
railway init
railway up
railway down

# Переменные окружения
railway variables
railway variables set KEY=value
railway variables unset KEY

# База данных
railway connect postgres
railway run npx prisma migrate deploy

# Подключение к сервису
railway shell
railway run command

# Домены
railway domain
railway domain add your-domain.com
```

## 🎯 Следующие шаги

После успешного развертывания:

1. **Настройте мониторинг**: Подключите Sentry или аналогичный сервис
2. **Настройте бэкапы**: Автоматические бэкапы базы данных
3. **Настройте CDN**: Для статических файлов
4. **Настройте алерты**: Уведомления о проблемах
5. **Оптимизируйте производительность**: Кэширование, оптимизация запросов

---

🎉 **Поздравляем!** Ваш Pump Ton теперь работает на Railway!
