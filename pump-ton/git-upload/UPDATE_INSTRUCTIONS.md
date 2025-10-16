# 📝 GitHub Update Instructions

## 🔧 Исправления зависимостей применены

### ✅ Что исправлено:
- `ton-connect-sdk` → `@tonconnect/sdk` в server/package.json
- `tonweb` → `@ton-community/sdk` в server/package.json  
- Добавлен `react-router-dom` в client/package.json

## 🚀 Команды для обновления GitHub:

### 1. Перейти в папку git-upload:
```cmd
cd C:\Users\User\Downloads\pump-ton\git-upload
```

### 2. Добавить изменения:
```cmd
git add .
```

### 3. Создать коммит:
```cmd
git commit -m "Fix dependencies for Railway deployment

- Fixed ton-connect-sdk package name to @tonconnect/sdk
- Updated tonweb to @ton-community/sdk  
- Added missing react-router-dom dependency
- Fixed package versions for Railway compatibility

Ready for Railway deployment!"
```

### 4. Отправить в GitHub:
```cmd
git push origin main
```

## ✅ После обновления:

1. **Railway автоматически подхватит изменения**
2. **Развертывание должно пройти успешно**
3. **Все зависимости будут установлены корректно**

## 🔍 Проверка:

- ✅ npm install без ошибок
- ✅ Сборка проекта успешна  
- ✅ Railway развертывание проходит
- ✅ Приложение запускается

---

🎉 **Готово к Railway развертыванию!**
