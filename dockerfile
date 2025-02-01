# filepath: /C:/Users/riktm/Desktop/Dev/workshop-services/Dockerfile
# Usa una imagen base de Node.js
FROM node:22.13.1

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el package.json y el package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Compila la aplicación (si es necesario)
RUN npm run build

# Expone el puerto en el que la aplicación correrá
EXPOSE 3000

# Comando para correr la aplicación
CMD ["npm", "run", "start:prod"]