# Используем официальный образ Nginx
FROM nginx:latest

# Копируем наши файлы в контейнер
COPY index.html /usr/share/nginx/html/index.html
COPY images /usr/share/nginx/html/images
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Открываем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
