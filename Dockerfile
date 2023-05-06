# Define a imagem base a ser usada
FROM node:14-alpine

# Define o diretório de trabalho
WORKDIR /build

# Copia o arquivo package.json e o arquivo package-lock.json (se existir)
COPY ./build .

# Instala as dependências do projeto
RUN npm i --force

# Copia o resto dos arquivos do projeto
COPY . .

# Compila o projeto com o Next.js
RUN npm build

# Expõe a porta padrão do Next.js (opcional)
EXPOSE 3000

# Inicia a aplicação
CMD ["npm", "start"]
