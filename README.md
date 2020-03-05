# JUDOCAS - 2.0

**Mantenedores**
|      Nome        |    TIA    |
|------------------|-----------|
| Bruno Fiore      | 31700713  |
| Felipe Pena      | 31709850  |
| Guilherme Sette  | 41783441  |
| Luiz Henrique    | 41719468  |
| Rafael Pereira   | 31647898  |


-> Repositório: [GitHub](https://github.com/GuilhermeeSette/Judocas-2.0)

-> Ambiente de Produção: [App](https://judocas.herokuapp.com/)

-> Board de Gerenciamento: [Board](https://github.com/GuilhermeeSette/Judocas-2.0/projects/1)

## Arquitetura
---
<img src="app/assets/images/arq.png"
     alt="Arquitetura"
     style="float: left; margin-right: 10px;" />


&nbsp;


## Modelagem
---
<img src="app/assets/images/diagrama.png"
     alt="Diagrama"
     style="float: left; margin-right: 10px;" />


&nbsp;


## Stack
---
- Ruby on Rails
- HTML
- CSS
- JavaScript
- PostgreSQL

Hospedado em [Heroku](www.heroku.com)




&nbsp;


## Setup local
---

> É preciso ter postgreSQL instalado em sua máquina.

No arquivo `database.yml` mudar os campos `username` e `password` para as credenciais de seu banco.

`git clone <url_projeto>`

`bundle install`

`rails db:setup`

`rails db:migrate`

`rails server`


