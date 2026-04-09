FROM nginx:alpine3.23

# Supprimer le contenu par défaut de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copier le site statique
COPY . /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Démarrer nginx
CMD ["nginx", "-g", "daemon off;"]