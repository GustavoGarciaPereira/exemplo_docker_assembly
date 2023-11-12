# Usando uma imagem base do Ubuntu
FROM ubuntu:latest

# Instalando o NASM e o binutils (que inclui o ld)
RUN apt-get update && apt-get install -y nasm binutils

# Copiando o código fonte Assembly para o container
COPY hello_world.asm /usr/src/myapp/hello_world.asm

# Definindo o diretório de trabalho
WORKDIR /usr/src/myapp

# Montando e linkando o código Assembly
RUN nasm -f elf64 hello_world.asm -o hello_world.o && \
    ld hello_world.o -o hello_world

# Definindo o comando para executar o aplicativo
CMD ["./hello_world"]
