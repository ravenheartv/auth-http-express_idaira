# Paso 1: Usar una imagen base de Node.js
FROM node:18

# Paso 2: Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Paso 3: Copiar el package.json y el package-lock.json al contenedor
COPY package*.json ./

# Paso 4: Instalar las dependencias
RUN npm install

# Paso 5: Copiar todo el código de la aplicación al contenedor
COPY . .

# Paso 6: Exponer el puerto en el que la aplicación va a escuchar (3000)
EXPOSE 3000

# Paso 7: Definir el comando para iniciar la aplicación
CMD ["npm", "start"]
