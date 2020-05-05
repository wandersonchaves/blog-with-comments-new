# BLOG WITH COMMENTS

[Build your first Rails app - blog with comments (tutorial)](https://www.youtube.com/watch?v=wbZ6yrVxScM)

### Installation

- Criar nova aplicação rails

```sh
rails new blog-with-comments --database=postgresql --skip-test --skip-action-cable --skip-turbo-links
```

- Copiar arquivos de configuração
  - docker-compose
  - database.yml
  - Procfile.dev
  - .env

```sh
cp ../other_project/docker-compose.yml .

cp ../other_project/config/database.yml config/database.yml

cp ../other_project/Procfile.dev .

cp ../other_project/.env .
```

configure o `database.yml` para o nome do banco correto

- Instale as gens no banco

```sh
bundle install
```

### Boot

- Inicie o docker-compose

`docker-compose up --build`

- Instale e configure o DB Rails

```sh
rails db:create

rails db:migrate
```

- Inicialize o server com _overmind_

```sh
overmind start
```

# Application

- configure as rotas no _routs.rb_

Na raiz do projeto execute:

- Criar um novo Controller

`rails g controller controller_name`

- Criar um novo Model

```sh
# cria um novo Model com um título contendo um texto
rails g model ModelName title:string content:text
```

- Criar uma nova tabela no migrations

  `rails g migration MigrationName`
