# PFA_Branches

### Demo Video

--> demonstration video des deux parties Frontend et Backend

https://drive.google.com/file/d/1fR0ZMsMM8HNU34HW-5cD3OLh0dSZr-oc/preview



------------------------------------------------------------------------------------

### Etapes a suivre pour deployer le project compelet:

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
    
#### 3-Demarrer le Project sur eclipse et utiliser Postman pour manipuler l'API :
    
  - Par exemple utiliser GET pour lister toutes les branches dans "API endpoint" suivant :
        ```
        localhost:8080/api/v1/branches/
        ```
    
    
