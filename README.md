# MICRO-SUBSCRIBE

Micro serviço de assinaturas da Codeflix

## Instalação e execução

### Permissão de acesso

Caso necessário, dê as seguintes permisssões:

```bash
chmod +x .docker/entrypoint.sh
```

### Criar o projeto django

```bash
docker-compose run app django-admin startproject micro_subscribers .
```

Referência: [Django com Docker](https://docs.docker.com/samples/django/)

### Subir o projeto com docker

```bash
docker-compose up --build     # cria e sobe um novo container
docker-compose up -d          # sobe um container e deixa o terminal livre
```

### Acessar o volume do projeto

```bash
docker-compose exec app bash
```

### Remote container (vscode)

Caso tenha instalado a instenção do vscode, remote container, a instalação e execução do projeto pode ser feita através dela ao invés de subir manualmente o ambiente no docker.

## Se familiarizando com o Django

Normalmente, ao subir a aplicação, será logado os comandos que você precisará executar para performar adequadamento, por exemplo:

### Executar uma `migration`

```bash
python manage.py migrate
```

### Criar um superusuário para o admin

```bash
python manage.py createsuperuser
```

### Criar novo módulo

```bash
django-admin startapp <nome_da_app>
```

## Sync de versão de pacotes

Ao instalar um novo pacote via `PIP`, executar o comando a baixo para atualizar a lista de pacotes dentro do `requirements.txt`

```bash
pip freeze > requirements.txt
```
