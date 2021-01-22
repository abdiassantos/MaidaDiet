# Teste App Dieta

## Tecnologias e Versões utilizadas:
* Ruby - 2.7.1
  ```bash
    sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    curl -sSL https://get.rvm.io | bash -s stable
    source ~/.rvm/scripts/rvm
    rvm install 2.7.1
    rvm use 2.7.1 --default
    ruby -v
  ```
  
* Rails 6.0.3.1
  ```bash
    gem install rails -v 6.0.2.2
    rbenv rehash
    rails -v
  ```
* RVM última versão disponível
    > Link para download e instalação no Linux -  <https://gorails.com/setup/ubuntu/20.04>

    > Link para download e instalação no MacOS -  <https://gorails.com/setup/osx/10.15-catalina>

    > Link para download e instalação no Windows - <https://gorails.com/setup/windows/10>
* PostgreSQL
    > link para download e instalação Windows, Linux e MacOS - <https://www.enterprisedb.com/downloads/postgres-postgresql-downloads>
* Configure o arquivo database.yml para que o usuario e senha do banco esteja de acordo com o seu banco de dados.

## Instalando dependências e gems
* Instale todas as dependências rodando o comando:
```bash
# Comando para criar e instalar todas as dependências do projeto, gems e arquivos do node
bundle install
yarn install --check-files
```

## Executando Creates e Migrates para o banco de dados
* Execute os comando abaixo para criar toda a estrutura do banco de dados, alḿe de migrar as tabelas e popular o banco com dados iniciais:
    ```bash
      rails db:create
    ```

## Rodando o projeto
* Rode o comando para iniciar o projeto:
  ```bash
  foreman start
  ```
* Acesse o endereço para acessar o acesso ao sistema:
  > <localhost:3002>

## Prontinho tudo instalado!
