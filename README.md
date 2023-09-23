# cypress-demo-1
Cypress Demo - Topicos Especiais Eng de Software 1
Algumas anotações sobre docker abaixo:
`docker pull nome-da-imagem` salva uma imagem do registro do docker no sistema
`docker images` lista as imagens já salvas
`docker run nome-da-imagem` roda o contêiner baseado nesta imagem
`docker run nome-da-imagem echo "something"` roda o contêiner e passa um comando de mensagem
`docker ps` lista os contêineres que estão em execução no momento
`docker ps -a` lista os contêineres que já foram executados anteriormente
`docker run -it nome-da-imagem sh` mantém o contêiner ativo e nos permite dar quantos comandos quiser a ele
`docker rm id-do-conteiner` exclui um contêiner da memória, portanto desaparecendo do comando docker ps -a
`docker container prune` remove todos os contêineres parados
`docker rmi nome-da-imagem` remove uma imagem
`docker run -d -P --name static-site prakhar1989/static-site` o -d libera o terminal para não ficar preso à execução do conteiner, -P publica as portas expostas em portas aleatórias, e o --name nomeia o conteiner
`docker port nome-dado` mostra as portas em que o conteiner esta rodando
`docker stop id-do-conteiner OU nome-definido` para parar o conteiner desanexado