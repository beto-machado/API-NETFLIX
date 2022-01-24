# API NETFLIX

## Requisitos Necessários:

* Ruby 3.0.2
* PostgreSQL
* Rails 6

## Funcionalidades

- Ler arquivo .csv, popular DB e mostra os registros em json.

![ScreenShot](https://github.com/beto-machado/api-mobile2you/blob/master/Captura%20de%20tela%202022-01-24%20170132.png)


## Para executar o projeto:

### Clone em sua máquina

```shell
git clone https://github.com/beto-machado/API-NETFLIX.git
```

### Instale as dependências
```shell
bundle install
```

### Crie o Banco de Dados
```shell
rails db:create
rails db:migrate
```

### Execute a aplicação
```shell
rails s
```
### Execute a Rake Task para popular o DB
````shell
rails csv:import
````
