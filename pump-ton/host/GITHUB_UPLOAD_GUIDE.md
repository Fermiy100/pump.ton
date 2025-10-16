# 🚀 GitHub Upload Guide - Pump Ton

## 📋 Инструкции по загрузке в GitHub

### Способ 1: Через Git CLI (Рекомендуется)

#### 1. Инициализация Git репозитория
```cmd
cd C:\Users\User\Downloads\pump-ton
git init
```

#### 2. Добавление файлов
```cmd
git add .
```

#### 3. Первый коммит
```cmd
git commit -m "Initial commit: Pump Ton project"
```

#### 4. Подключение к удаленному репозиторию
```cmd
git remote add origin https://github.com/Fermiy100/pump.ton.git
```

#### 5. Загрузка в GitHub
```cmd
git push -u origin main
```

### Способ 2: Через GitHub Desktop

1. Скачайте GitHub Desktop
2. Откройте папку проекта
3. Создайте новый репозиторий
4. Подключите к существующему репозиторию
5. Загрузите файлы

### Способ 3: Через веб-интерфейс GitHub

1. Перейдите на https://github.com/Fermiy100/pump.ton
2. Нажмите "uploading an existing file"
3. Перетащите файлы проекта
4. Добавьте commit message
5. Нажмите "Commit changes"

## 🔧 Автоматический скрипт загрузки

Создан файл `upload-to-github.bat` для автоматической загрузки.

## 📁 Структура проекта для загрузки

```
pump-ton/
├── client/                 # React frontend
├── server/                 # Node.js backend
├── shared/                 # Shared code
├── docs/                   # Documentation
├── host/                   # Hosting files
├── package.json            # Root package.json
├── README.md               # Main README
├── .gitignore              # Git ignore file
└── LICENSE                 # License file
```

## ⚠️ Важные файлы для исключения

Создан файл `.gitignore` для исключения:
- `node_modules/`
- `.env` файлы
- `dist/` и `build/` папки
- Логи и временные файлы

## 🎯 После загрузки

1. Настройте GitHub Pages (опционально)
2. Настройте GitHub Actions для CI/CD
3. Добавьте описание репозитория
4. Настройте темы и теги
5. Создайте Issues и Pull Requests

---

🎉 **Проект успешно загружен в GitHub!**
