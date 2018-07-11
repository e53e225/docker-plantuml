# docker-plantuml

## Usage

```sh
cat <<EOT | docker container run --rm --interactive e53e225/plantuml:latest -pipe -tpng >uml.png
@startuml

node "client" {
  [A]
}

node "server" {
  [B]
}

[A] -> [B]: Hello World!

@enduml
EOT
```
