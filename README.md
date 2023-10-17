# cypress-demo-1
Cypress Demo - Topicos Especiais Eng de Software 1
Algumas anotações sobre docker abaixo:
`docker pull nome-da-imagem:tag` salva uma imagem do registro do docker no sistema, tag é a versão, se tirar o `:tag` ele automaticamente pega a latest

`docker images` lista as imagens já salvas
`docker run nome-da-imagem` roda o contêiner baseado nesta imagem
`docker run nome-da-imagem echo "something"` roda o contêiner e passa um comando de mensagem
`docker ps` lista os contêineres que estão em execução no momento
`docker ps -a` lista os contêineres que já foram executados anteriormente
`docker run -it nome-da-imagem sh` mantém o contêiner ativo e nos permite dar quantos comandos quiser a ele
`docker rm id-do-conteiner` ou `docker container rm idContainer` exclui um contêiner da memória, portanto desaparecendo do comando docker ps -a
`docker container prune` remove todos os contêineres parados
`docker rmi nome-da-imagem` ou `docker image rm nome-da-imagem`remove uma imagem
`docker run -d -P --name static-site prakhar1989/static-site` o -d libera o terminal para não ficar preso à execução do conteiner, -P publica as portas expostas em portas aleatórias, e o --name nomeia o conteiner
`docker port nome-dado` mostra as portas em que o conteiner esta rodando
`docker stop id-do-conteiner OU nome-definido` para parar o conteiner desanexado
`docker build -t nome-de-usuario-no-docker-hub/nome-aplicacao .` constrói imagem a partir de um dockerfile presente na mesma pasta
`docker run -p 8888:5000 user/app` roda internamente na porta 5000 e externamente na 8888
`docker start idContainer` roda container que esteja listado no `docker ps -a`
`docker start -ai nomeContainer` roda container existente em modo interativo no terminal
`docker run --rm nome-container` roda e depois exclui o container
`docker run -v pastahost:pastacontainer nomeImagem` mapeia um volume ou pasta na máquina com um container, fazendo o container conseguir acessar a pasta no pc host, por exemplo:
`docker container run -p 8080:80 -v C:\Users\Danie\Desktop\curso-docker\ex-volume\html:/usr/share/nginx/html nginx` para o caso de mapear a pasta html do nginx para uma pasta na máquina.
`docker restart nomeContainer` reinicia o container docker
`docker container logs nomeContainer` mostra os logs
`docker container inspect nomeContainer` diversas informações do container são mostradas
`docker container exec nomeContainer comando` faz o container executar um comando, por exemplo: `docker container exec ex-daemon-basic uname -or` mostra em que sistema o container está rodando
``