import os
import requests

# Variables d'environnement
api_url = os.getenv('MEDIAWIKI_API_URL')
username = os.getenv('MEDIAWIKI_USER')
password = os.getenv('MEDIAWIKI_PASSWORD')

def login():
    login_url = f"{api_url}?action=login&format=json"
    response = requests.post(login_url, data={
        'lgname': username,
        'lgpassword': password
    })
    login_data = response.json()
    if login_data.get('error'):
        raise Exception(f"Login error: {login_data['error']['info']}")
    return login_data['login']['lgtoken']

def upload_page(title, content):
    token = login()
    upload_url = f"{api_url}?action=edit&format=json"
    response = requests.post(upload_url, data={
        'title': title,
        'text': content,
        'token': token
    })
    upload_data = response.json()
    if upload_data.get('error'):
        raise Exception(f"Upload error: {upload_data['error']['info']}")
    print(f"Page '{title}' uploaded successfully.")

if __name__ == "__main__":
    # Pages à déployer
    pages = {
        "Procédures de Sauvegarde des Données": (
            "== Procédures de Sauvegarde des Données ==\n"
            "=== Objectif ===\n"
            "Cette procédure vise à garantir que toutes les données critiques de l'entreprise sont sauvegardées de manière régulière et sécurisée.\n"
            "=== Procédure ===\n"
            "1. Identifier les données critiques.\n"
            "2. Configurer les sauvegardes automatiques.\n"
            "3. Vérifier les sauvegardes régulièrement.\n"
            "4. Conserver des copies de sauvegarde dans un lieu sécurisé.\n"
            "=== Responsable ===\n"
            "L'équipe informatique est responsable de la mise en œuvre de cette procédure."
        ),
        "Procédure de Dépannage Informatique": (
            "== Procédure de Dépannage Informatique ==\n"
            "=== Objectif ===\n"
            "Cette procédure vise à fournir un guide pour résoudre les problèmes informatiques courants rencontrés par les utilisateurs.\n"
            "=== Procédure ===\n"
            "1. Identifier le problème signalé par l'utilisateur.\n"
            "2. Effectuer des diagnostics de base (redémarrer, vérifier les connexions).\n"
            "3. Consulter les bases de données de problèmes connus.\n"
            "4. Résoudre le problème ou escalader au niveau supérieur si nécessaire.\n"
            "=== Responsable ===\n"
            "Les techniciens de support informatique sont responsables de cette procédure."
        ),
        "Procédures de Sécurité": (
            "== Procédures de Sécurité ==\n"
            "=== Objectif ===\n"
            "Cette procédure vise à garantir la sécurité des données et des systèmes informatiques de l'entreprise.\n"
            "=== Procédure ===\n"
            "1. Assurer que les systèmes sont à jour avec les derniers correctifs de sécurité.\n"
            "2. Mettre en place des contrôles d'accès appropriés.\n"
            "3. Effectuer des audits de sécurité réguliers.\n"
            "4. Former les employés sur les bonnes pratiques de sécurité.\n"
            "=== Responsable ===\n"
            "L'équipe de sécurité informatique est responsable de cette procédure."
        ),
        "Gestion des Fichiers": (
            "== Gestion des Fichiers ==\n"
            "=== Objectif ===\n"
            "Cette procédure définit les pratiques recommandées pour la gestion des fichiers au sein de l'entreprise.\n"
            "=== Procédure ===\n"
            "1. Organiser les fichiers dans des dossiers appropriés.\n"
            "2. Nommer les fichiers de manière cohérente et descriptive.\n"
            "3. Mettre en place des sauvegardes régulières des fichiers importants.\n"
            "4. Respecter les politiques de conservation des données.\n"
            "=== Responsable ===\n"
            "Chaque employé est responsable de la gestion de ses propres fichiers selon cette procédure."
        )
    }

    # Déployer chaque page
    for title, content in pages.items():
        upload_page(title, content)
