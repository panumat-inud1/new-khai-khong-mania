################################# Step 1: Build #################################
###> Pull node.js from docker image <###
FROM node:lts-alpine as builder

###> Working directory <###
WORKDIR /usr/src/app

###> Copy package.json, package-log.json, npm-shrinkwrap.json from local machine to workdir in container <###
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

###> RUN npm install in our local machine <###
RUN npm ci

###> Copy generated modulea and all other files to the container <###
COPY . .

###>  RUN npm prepare (SvelteKit sync) <###
#RUN npm run prepare-dev

###> Create Svelte Material UI themes <###
#RUN npm run smui-theme-light && npm run smui-theme-dark

###>  RUN npm prepare (SvelteKit sync) and Create Svelte Material UI themes<###
RUN npm run prepare-dev

##> Build application <###
RUN npm run build

################################# Step 2 : Server #################################
###> Pull node.js from docker image <###
FROM node:lts-alpine

###> Working directory <###
WORKDIR /app

##> Copy files from previous step <###
COPY --from=builder /usr/src/app/build .
COPY --from=builder /usr/src/app/package.json .
COPY --from=builder /usr/src/app/node_modules ./node_modules

##> Our application is running on port 3000 within the container, so need to expose it <###
EXPOSE 3000

##> The command that start our application <###
CMD ["node", "index.js"]