FROM node:21-alpine AS development
ENV NODE_ENV development
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY ./code/package.json .
COPY ./code/package-lock.json .
RUN npm install
# Copy app files
COPY ./code/. .
COPY ./code/.env.local .
# Expose port
EXPOSE 5137
RUN npm run build

# Start the app
ENTRYPOINT "npm" "run" "preview" "--" "--port" "5173" "--host"
