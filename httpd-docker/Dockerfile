# Utilisation de l'image officielle Apache HTTP Server
FROM httpd:alpine

# Copier le fichier index.html dans le répertoire web par défaut d'Apache
COPY index.html /usr/local/apache2/htdocs/

# Exposer le port 80 du conteneur
EXPOSE 80

# Commande pour démarrer Apache HTTP Server en mode daemon
CMD ["httpd-foreground"]
