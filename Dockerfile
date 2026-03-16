# Базовый образ с nginx
FROM nginx:alpine

# Копируем ваш index.html в стандартную директорию nginx
COPY index.html /usr/share/nginx/html/index.html

# (опционально) пробрасываем порт
EXPOSE 80

# Запуск nginx в foreground (по умолчанию в образе)
CMD ["nginx", "-g", "daemon off;"]