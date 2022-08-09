# Enviando uma imagem ao DockerHub

[Tutorial de como enviar uma imagem Docker para o DockerHub](https://blog.locaweb.com.br/temas/codigo-aberto/como-enviar-suas-imagens-docker-para-o-dockerhub/)

# Rodando a imagem stateless com o Deployment

[Link da documentação da criação de deployment](https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/)
[Link da documentação de criação de ingress e expose do ambiente](https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/)

Comandos utilizados para expor o ambiente
```

kubectl create deployment pets --image=yasminheinze/pets:latest
kubectl expose deployment pets --type=NodePort --port=80
minikube service pets --url
```

Comandos utilizados para aplicar o ingress

```
kubectl apply -f ingress.yaml 
kubectl get ingress
```

Se retornar o index da aplicação é por que está funcionando !
```
curl yasminpets
```
Nota: Não se esqueça de adicionar o ip da aplicação no /hosts se não, não vai resolver nome.


