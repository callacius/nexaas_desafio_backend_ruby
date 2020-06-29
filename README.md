# Nexaas desafio backend ruby

## Documentação

Nexaas API docs: https://documenter.getpostman.com/view/10263264/T17AkWvM

## Instalação

Para instalação se já tiver o Ruby e ROR na máquina, pode ser usado o processo normal de instalação que consiste em:
•	Clonar o repositório.
•	Abrir a pasta pelo terminal.
•	Executar “bundle install” para instalar as gems necessárias.
•	Executar “bundle exec rails db:create db:migrate” para criar o banco, e a estrutura das tabelas, o projeto foi criado e testado com o sqlite.
•	Se quiser popular o banco com dados, executar “rails dev:setup”.
•	Executar “rails s” para iniciar o serviço
Também foi disponibilizado um arquivo “dockerfile” e “docker-compose.yml” para testar via container, faça a seguinte rotina:
•	Clonar o repositório.
•	Abrir a pasta pelo terminal.
•	Executar “docker-compose build”.
•	Executar “docker-compose run --rm app bundle install”
•	Executar “docker-compose run --rm app bundle exec rails db:create db:migrate”.
•	Executar “docker-compose run --rm app bundle exec rails rails dev:setup”.
•	Executar “docker-compose up”.
Para instalação com container for disponibilizados 2 arquivos .yml, com configuração para outros bancos diferente de sqlite, pra usar substitua ou renomeie para Docker-compose.yml e altere a conexão e execute os processos anteriores
 


