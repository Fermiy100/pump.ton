# 📋 Пошаговые инструкции для обновления GitHub

## 🎯 Цель: Обновить GitHub репозиторий с исправленными зависимостями

### Шаг 1: Откройте командную строку
- Нажмите `Win + R`
- Введите `cmd`
- Нажмите `Enter`

### Шаг 2: Перейдите в папку git-upload
```cmd
cd C:\Users\User\Downloads\pump-ton\git-upload
```

### Шаг 3: Добавьте все изменения
```cmd
git add .
```

### Шаг 4: Создайте коммит
```cmd
git commit -m "Fix dependencies for Railway deployment"
```

### Шаг 5: Отправьте в GitHub
```cmd
git push origin main
```

## ✅ Результат:

После выполнения команд:
- GitHub репозиторий обновится
- Railway автоматически подхватит изменения
- Развертывание пройдет успешно
- Все зависимости установятся корректно

## 🔍 Что исправлено:

- `ton-connect-sdk` → `@tonconnect/sdk`
- `tonweb` → `@ton-community/sdk`
- Добавлен `react-router-dom`
- Обновлены версии пакетов

---

🚀 **Готово к Railway развертыванию!**
