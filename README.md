# Minikube Setup Script

Script d'installation automatique de Minikube et kubectl pour la préparation CKAD.

## Installation

Clone ce dépôt Git :
```bash
git clone https://github.com/VOTRE-USERNAME/minikube-setup
```

Exécute le script **minikube-docker-setup.sh** pour installer Minikube ainsi que le client **kubectl**
```bash
cd minikube-setup
chmod +x minikube-docker-setup.sh
./minikube-docker-setup.sh
```

## Installation manuelle

Ou suivez la procédure manuelle décrite dans la documentation officielle pour installer Minikube sur votre système d'exploitation préféré.

## Démarrage de Minikube

Après l'installation :
```bash
minikube start
```

## Ressources

- [Documentation Minikube](https://minikube.sigs.k8s.io/docs/)
- [Documentation kubectl](https://kubernetes.io/docs/reference/kubectl/)
- [CKAD Certification](https://www.cncf.io/certification/ckad/)
