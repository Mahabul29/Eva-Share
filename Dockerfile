# Node.js LTS version use kar rahe hain
FROM node:20-alpine

# App directory create karein
WORKDIR /usr/src/app

# Package files copy karein
COPY package*.json ./

# Production dependencies install karein
RUN npm ci --only=production

# Baaki saara source code copy karein
COPY . .

# Server port expose karein
EXPOSE 8080

# Environment variable set karein
ENV PORT=8080

# App start karein
CMD ["node", "server.js"]
