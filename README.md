# Logging

Implementation of logging Best Practices.  
Basically "stdout" based logging.

- dev module: F5 in code => editor's DebugConsole
- dev app: `node ./src/app.js` => console
- docker: `docker build -t logging -f ./main.Dockerfile .` + `docker run logging` => console
- docker-compose: `docker-compose up --build` => console from sidecar stdout
- Amazon ECS: `git push` => AWS Cloud watch console
