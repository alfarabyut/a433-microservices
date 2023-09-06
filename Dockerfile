# menggunakan node versi 14
FROM node:14

# workding directory app
WORKDIR /app

# copy json
COPY . .

# production mode 
ENV NODE_ENV=production DB_HOST=item-db

# dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# ekspos port 
EXPOSE 8080

# npm start 
CMD ["npm", "start"]

