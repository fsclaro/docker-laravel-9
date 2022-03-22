# Setup Docker Para Projetos Laravel 9 com PHP 8
[Baseado no projeto do Carlos do EspecializaTi](https://github.com/especializati/setup-docker-laravel)

### Passo a passo
Clone Repositório
```sh
git clone https://github.com/fsclaro/docker-laravel-9.git docker-laravel-9
```

```sh
cd docker-laravel-9/
```


Remova o versionamento
```sh
rm -rf .git/
```

Copie os arquivos de configuração para dentro do seu projeto
```sh
cd docker-laravel-9
./install.sh seu-projeto
```
*Exemplo: ./install.sh ../projeto-x*


Copie o arquivo .env.example para dentro da pasta do seu projeto
```sh
cd seu-projeto
cp .env.example .env
```

Edite o arquivo .env e atualize as variáveis de ambiente
```dosini
APP_NAME="NOME DO SEU PROJETO"
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=nome_do_seu_banco_de_dados
DB_USERNAME=root
DB_PASSWORD=root

CACHE_DRIVER=redis
QUEUE_CONNECTION=redis
SESSION_DRIVER=redis

REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379
```

## Scripts

Subir os containers do projeto
```sh
./scripts/up.sh
```

Derrubar os containers
./scripts/down.sh

Acessar o container do aplicativo
```sh
./scripts/bash.sh
```

Executar um comando do artisan
```sh
./scripts/artisan.sh <parâmetros>
```

Executar um comando do composer
```sh
./scripts/composer.sh <parâmetros>
```

Acessar o banco de dados mysql
```sh
./scripts/mysql.sh
```


Instalar as dependências do projeto
```sh
./scripts/composer.sh install
```


Gerar a key do projeto Laravel
```sh
/scripts/artisan.sh key:generate
```


Acessar o projeto pelo navegador
[http://localhost:8080](http://localhost:8080)
