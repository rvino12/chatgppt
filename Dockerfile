FROM node:18
RUN git clone https://github.com/chokiproai/ChatGPT-Plugins.git
WORKDIR "ChatGPT-Plugins"
RUN npm i 
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]