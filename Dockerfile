# Imagen mínima para servir un sitio estático en Cloud Run
FROM nginx:alpine

# Cloud Run envía tráfico al puerto 8080
RUN sed -i 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf

# Copia el dashboard como página principal
COPY Dashboard_Calendario_Comercial_Turbo_Q3Q4.html /usr/share/nginx/html/index.html

EXPOSE 8080
