# api-geodata

Lancer l'image docker

```bash
docker run -d -p 8080:8080 --name falco-geodata falco/geo-data
```

Lancer le chargement et le dump des données dans PG
    
```bash
bash charge_all.sh
```