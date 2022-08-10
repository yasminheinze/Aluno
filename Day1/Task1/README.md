# Comandos para execução da imagem

Montando a imagem com Docker Build
```
docker build -t yasminheinze/pets .
```

Rodando o container

```
docker run -dit -p 8080:80 yasminheinze/pets:latest
```

Acesse o site e descubra mais sobre meus Pets
```
http://localhost:8080/
```
