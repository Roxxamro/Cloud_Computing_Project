
Projet : Cloud Computing
API developpee par Fabien HUITELEC et infrastructure declarative (Microsoft Azure) en utilisant Terraform HCL.

Description du projet
Ce projet consiste a provisionner une infrastructure cloud sur Microsoft Azure et a deployer une API Python developpee avec le framework FastAPI. Le tout inclut une chaîne CI/CD configuree avec GitHub Actions pour automatiser les tests, la construction et le deploiement.

équipe de travail
Le projet a ete developpe par quatre contributeurs :

Simon Demeilliers,
Remi Protin,
Quentin Ambroziewicz,
Titoine Farthouat.

Technologies utilisees
Terraform v1.5.7 par HashiCorp
Python v3.12 ou plus recent
FastAPI v0.115.0 ou plus recent
Structure du projet
Le depôt est organise de la manière suivante :

.github : contient les workflows CI/CD.
examples : contient l'API Python ecrite avec le framework FastAPI.
infrastructure : regroupe les declarations d'infrastructure cloud.
Installation

Dans le dossier ./infrastructure, executez les commandes suivantes dans cet ordre :

Avant de faire les commandes terraform, il faut se connecter avex az login et remplir les informations manquantes dans le fichier terraform.tfvars.sample

terraform init,
terraform plan,
terraform apply
Ces commandes provisionneront votre infrastructure cloud.

Motivation et architecture
L’objectif principal de ce projet est d’appliquer les concepts etudies durant le cours de cloud computing a Junia ISEN. Cela inclut :

La conception d'une architecture cloud sur Microsoft Azure.
Le deploiement d'une API simple, accompagnee d'une base de donnees PostgreSQL et d’un stockage de fichiers.
Ce projet illustre la mise en œuvre concrète des technologies cloud modernes pour repondre a des exigences techniques basiques.


