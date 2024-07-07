# Utiliser l'image de base Python
FROM python:3.9-slim

# Installer Ansible
RUN pip install ansible

# Créer le répertoire pour les playbooks
RUN mkdir -p /etc/ansible/playbooks

# Définir le répertoire de travail
WORKDIR /etc/ansible/playbooks

# Copier les playbooks dans le conteneur
COPY playbooks /etc/ansible/playbooks

# Commande par défaut (peut être remplacée lors de l'exécution)
CMD ["ansible-playbook", "--version"]
