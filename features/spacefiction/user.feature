#language: pt

@users
 Funcionalidade: Users
 - validar operaçoes da API Users

@get_users 
 Cenario: Validar GET API users
  Quando faco uma requisição GET para o serviço Users
  Entao o serviço Users deve responder com 200
  E retornar a lista de usuarios
 
@get_user 
 Cenario: Validar GET API Users com id
  Quando faco uma requisição GET para o serviço Users passando id
  Entao o serviço Users deve responder com 200
  E retornar o usuario

@post_user 
 Cenario: Validar POS API Users 
  Quando faco uma requisição POST para o serviço Users 
  Entao o serviço Users deve responder com 200
  E retornar o usuario criado

@put_user 
 Cenario: Validar PUT API Users 
  Quando faco uma requisição PUT para o serviço Users 
  Entao o serviço Users deve responder com 200
  E retornar o usuario alterado  




