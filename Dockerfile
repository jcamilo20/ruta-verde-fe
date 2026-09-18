FROM nginx:alpine

# Modificar la configuración de Nginx para escuchar en el puerto 8080 (requerido por Cloud Run)
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

# Copiar el archivo estático al directorio público de Nginx
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]0
