# Usa una imagen base de Nginx
FROM nginx:alpine

# Copia los archivos y directorios del proyecto al directorio de Nginx
COPY . /usr/share/nginx/html

# Exponemos el puerto 80 para el servidor web
EXPOSE 80