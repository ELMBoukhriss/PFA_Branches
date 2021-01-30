# PFA_Branches

### Demo Video

--> demonstration video des deux parties Frontend et Backend

https://drive.google.com/file/d/1fR0ZMsMM8HNU34HW-5cD3OLh0dSZr-oc/preview



------------------------------------------------------------------------------------

### Etapes a suivre pour deployer le project complet:

#### 1-Importer le fichier `dbexport.pgsql` sur Postgresql avec cette commande :
  - 
    > psql -U username dbname < dbexport.pgsql 
    
  ##### avec :
   ```
   - `username : votre username postgresql`
   - `dbname : choisir un nom ou utiliser  "branche_activites "`
   ```
   
#### 2-Importer le dossier `Backend-API-Springboot` sur Eclipse ou autre IDE :
- Modifier le fichier `/src/main/ressources/application.properties ` avec votre propre configuration Postgres
    ```
    spring.datasource.url=jdbc:postgresql://localhost:5432/branche_activites
    spring.datasource.username=postgres
    spring.datasource.password=root 
    
    ```
    
#### 3-Demarrer le Project sur Eclipse et utiliser Postman pour manipuler l'API :
    
  - Par exemple utiliser GET pour lister toutes les branches dans "API endpoint" suivant :
        ```
        localhost:8080/api/v1/branches/
        ```
#### 4-Importer le dossier `flutter_project ` sur Intellij idea ou Android studio :
   - lancer le projet sur un emulateur ou tel .
   - le projet est deja configurer pour connecter automatiquement avec l'API,si vous rencontrer des problemes modifier l'url dans le package:
    ```
     flutter_project/lib/services/api_service.dart 
    ```
    
    
    
