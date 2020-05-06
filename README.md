# Logging

Implementation of logging Best Practices.  
Basically "stdout" based logging.
About logging: [wikipedia](https://ja.wikipedia.org/wiki/%E3%82%B5%E3%83%BC%E3%83%90%E3%83%AD%E3%82%B0)

- dev module: F5 in VScode => editor's DebugConsole
- dev app: `node ./src/app.js` => console
- docker: `docker build -t logging -f ./fluent.Dockerfile .` + `docker run logging` => console
- docker-compose: `docker-compose up --build` => console from sidecar stdout
- Amazon ECS: `git push` => GitHub release => AWS Cloud watch console

## ECS

### How to setup

(first time)  
Prepare an ECS Cluster and a Service.  
Prepare ECR registries.  
Prepare IAM (ECS TaskExecution role with cloudwatch log settings).

(reStart)  
Set task number in Service = 1.

### Architecture

Sidecar logging + AWS Cloudwatch logs

Task = MainContainer + FluentbitSidecarContainer

log flow:

1. Main => stdout
2. stdout => Docker fireLens (auto-fluent driver) => forward protocol
3. forward protocol => sidecar fluentBit
4. sidecar fluentBit => stdout
5. stdout => aws Cloudwatch Logs
