#pega a imagem da versão 3.8.4 do maven
FROM maven:3.8.4-jdk-8 as build

#pega todos os arquivos do projeto
COPY src /app/src
COPY pom.xml /app

#mudando para o diretorio do projeto no container
WORKDIR /app

#instalar dependências e fazer build
RUN mvn clean install

#pega a imagem para rodar a aplicação java
FROM openjdk:8-jre-alpine

#copiar o build para dentro do nosso diretorio no container
COPY --from=build /app/target/<NOME_PROJETO>-<VERSAO>.jar /app/app.jar

WORKDIR /app

#expor a porta 8080 do container
EXPOSE 8080

#executa os comandos para rodar a aplicação
CMD ["java", "-jar", "app.jar"]
