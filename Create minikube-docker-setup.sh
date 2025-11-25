#!/bin/bash
# Script pour installer Minikube et kubectl

echo " Installation de Minikube et kubectl..."

# Vérification de l'OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installation pour Linux..."
    
    # Installation de Minikube
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    rm minikube-linux-amd64
    
    # Installation de kubectl
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    rm kubectl
    
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installation pour macOS..."
    
    # Vérifier si Homebrew est installé
    if ! command -v brew &> /dev/null; then
        echo "Homebrew n'est pas installé. Installation..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    
    # Installation de Minikube et kubectl
    brew install minikube kubectl
    
else
    echo " Système d'exploitation non supporté"
    exit 1
fi

# Vérification de l'installation
echo ""
echo " Vérification des installations..."
minikube version
kubectl version --client

echo ""
echo " Installation terminée !"
echo "Pour démarrer Minikube, utilisez : minikube start"
