# Projeto Assembly Dockerizado: "Gustavo"

## Descrição

Este projeto contém um simples programa em Assembly que imprime a mensagem "Gustavo\n" no console. O código Assembly é montado e linkado dentro de um container Docker, tornando o processo de compilação e execução independente do ambiente local.

## Estrutura do Projeto

-   `gustavo.asm`: Arquivo fonte do programa Assembly.
-   `Dockerfile`: Define as instruções para construir a imagem Docker que compila e executa o programa Assembly.
-   `docker-compose.yml`: Configuração para facilitar a construção e execução da imagem Docker usando Docker Compose.

## Pré-requisitos

-   Docker
-   Docker Compose (opcional, mas recomendado para facilitar o processo)

## Como Usar

### Montando e Executando Localmente (Opcional)

Para montar e executar o programa Assembly localmente, você precisará do NASM (Netwide Assembler) e do linker do Linux. Execute os seguintes comandos:

bashCopy code

`nasm -f elf64 gustavo.asm -o gustavo.o
ld gustavo.o -o gustavo
./gustavo` 

### Usando Docker

#### Construindo a Imagem Docker

Para construir a imagem Docker, execute o seguinte comando no diretório do projeto:

bashCopy code

`docker build -t gustavo-assembly-app .` 

#### Executando o Container Docker

Após construir a imagem, você pode executar o container usando:

bashCopy code

`docker run gustavo-assembly-app` 

### Usando Docker Compose

Se preferir usar o Docker Compose, você pode construir e executar o container com um único comando:

bashCopy code

`docker-compose up` 

## Contribuições

Contribuições para o projeto são bem-vindas. Siga as práticas padrão de contribuição do GitHub - faça um fork do projeto, crie uma branch para suas alterações e faça um pull request.