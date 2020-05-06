# Logging

Implementation of logging Best Practices.  
Basically "stdout" based logging.
About logging: [wikipedia](https://ja.wikipedia.org/wiki/%E3%82%B5%E3%83%BC%E3%83%90%E3%83%AD%E3%82%B0)

- dev module: F5 in VScode => editor's DebugConsole
- dev app: `node ./src/app.js` => console
- docker: `docker build -t logging -f ./fluent.Dockerfile .` + `docker run logging` => console
- docker-compose: `docker-compose up --build` => console from sidecar stdout
- Amazon ECS: `git push` => GitHub release => AWS Cloud watch console
