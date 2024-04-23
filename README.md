### Docker

`docker run <NOME_IMAGEM>`
- baixa a imagens hello-world do docker-hub e loga um hello world p/ mostrar  o funcionamento do container

`docker ps`
- lista os containers em execução

`docker ps -a`
- listas todos os containers que já fora executados

`docker run -it ubuntu bash`
- roda uma imagem ubuntu no modo interativo rodando o bash(terminal)

`docker stop <CONTAINER_ID>`
- para de rodar o container especificado

`docker start <CONTAINER_ID>`
- inicializa o container especificado

`docker build`
- gera a imagem do Dockerfile

`docker build -t <NOME_QUE_DESEJA_SALVAR_A_IMAGEM>:<VERSÃO_DA_IMAGEM> .`
- gera a imagem do Dockerfile com o nome e versão especificados

`docker run <NOME_IMAGEM>:<VERSÃO_DA_IMAGEM>`
- roda a imagem gerada pelo docker build

`docker run -P <NOME_IMAGEM>:<VERSÃO_DA_IMAGEM>`
- roda a imagem em uma porta externa aleatória

`docker run -p 8080:<PORTA_DA_IMAGEM> <NOME_IMAGEM>:<VERSÃO_DA_IMAGEM>`
- roda a imagem na porta externa 8080

`docker build --plataform linux/amd64 -t <NOME_IMAGEM>:<VERSÃO_DA_IMAGEM> .`
- criar a imagem com base na plataforma linux/amd64

`docker tag <NOME_IMAGEM>:<VERSÃO_DA_IMAGEM> <NOVO_NOME_IMAGEM>:<VERSÃO_DA_IMAGEM>`
- muda o nome da imagem existente para o novo
---
### Docker Compose

`docker-compose up`
- inicializa os containers no arquivo docker-compose.yml

`docker-compose up -d`
- inicializa os containers no arquivo docker-compose.yml sem "travar" o terminal

`docker-compose down`
- para os containers inicializados do arquivo docker-compose.yml

`docker-compose up flyway`
- atualizar migrações do flyway /scripts
