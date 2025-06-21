FROM node:20

WORKDIR /app

COPY package*.json ./

RUN ls -l /app  # ✅ Confirm contents during build

RUN npm install

COPY . .

CMD ["node", "index.js"]
