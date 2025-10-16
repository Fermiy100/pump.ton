# 🚀 Ручная загрузка Pump Ton в GitHub

## 📋 Пошаговая инструкция

### Шаг 1: Установка Git
1. Скачайте Git с [git-scm.com](https://git-scm.com/downloads)
2. Установите Git
3. Перезапустите командную строку

### Шаг 2: Настройка Git
```cmd
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Шаг 3: Переход в папку проекта
```cmd
cd C:\Users\User\Downloads\pump-ton
```

### Шаг 4: Инициализация Git репозитория
```cmd
git init
```

### Шаг 5: Добавление файлов
```cmd
git add .
```

### Шаг 6: Первый коммит
```cmd
git commit -m "Initial commit: Pump Ton - Modern TON Blockchain Social Trading Platform"
```

### Шаг 7: Подключение к GitHub
```cmd
git remote add origin https://github.com/Fermiy100/pump.ton.git
```

### Шаг 8: Загрузка в GitHub
```cmd
git push -u origin main
```

## 🔧 Альтернативные способы

### Способ 1: GitHub Desktop
1. Скачайте GitHub Desktop
2. Откройте папку проекта
3. Создайте новый репозиторий
4. Подключите к существующему репозиторию
5. Загрузите файлы

### Способ 2: Веб-интерфейс GitHub
1. Перейдите на https://github.com/Fermiy100/pump.ton
2. Нажмите "uploading an existing file"
3. Перетащите файлы проекта
4. Добавьте commit message
5. Нажмите "Commit changes"

### Способ 3: VS Code
1. Откройте проект в VS Code
2. Установите расширение Git
3. Используйте встроенный Git интерфейс
4. Commit и Push изменения

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
├── LICENSE                 # License file
└── upload-to-github.bat    # Upload script
```

## ⚠️ Важные файлы

### Включены в репозиторий:
- ✅ Весь исходный код
- ✅ Документация
- ✅ Конфигурационные файлы
- ✅ README.md
- ✅ LICENSE

### Исключены из репозитория (.gitignore):
- ❌ node_modules/
- ❌ .env файлы
- ❌ dist/ и build/ папки
- ❌ Логи и временные файлы
- ❌ uploads/

## 🎯 После загрузки

1. **Настройте описание репозитория**
2. **Добавьте темы и теги**
3. **Создайте Issues**
4. **Настройте GitHub Pages** (опционально)
5. **Настройте GitHub Actions** для CI/CD

## 🆘 Решение проблем

### Ошибка аутентификации
```cmd
git config --global credential.helper store
```

### Ошибка "remote origin already exists"
```cmd
git remote remove origin
git remote add origin https://github.com/Fermiy100/pump.ton.git
```

### Ошибка "main branch does not exist"
```cmd
git branch -M main
git push -u origin main
```

---

🎉 **После выполнения этих шагов ваш проект будет загружен в GitHub!**
