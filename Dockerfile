# Usar a imagem oficial do Nginx baseada no Alpine (mais leve)
FROM nginx:alpine

# Copiar um arquivo index.html personalizado para o Nginx
COPY ./index.html /usr/share/nginx/html/index.html

# Expor a porta 80 do contêiner
EXPOSE 80
