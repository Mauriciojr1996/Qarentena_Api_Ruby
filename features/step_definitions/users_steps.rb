 # requisição GET /api/v1/Activities
 Quando('faco uma requisição GET para o serviço Users') do                      
      @request_users = users.get_users
  end                                                                            
                                                                                 
  Entao('o serviço Users deve responder com {int}') do |status_code|                     
    expect(@request_users.code).to eq status_code
  end                                                                            
                                                                                 
  Entao('retornar a lista de usuarios') do                                       
      print(@request_users) 
      expect(@request_users.message).not_to be_empty
  end 
  #requisição GET ID /api/v1/Activities/#{id}
  Quando('faco uma requisição GET para o serviço Users passando id') do        
   # @id = 1 //puxando um id da documentação 
   @id = sort_id.to_i  # sort_id = esta fazendo um sortei dentro do arrey de ids
   @request_users = users.get_user(@id) 
   print @request_users
  end                                                                          
                                                                               
  Entao('retornar o usuario') do 

    expect(@request_users.parsed_response['id']).to eql @id 
    print @id
  end  
  # requisição POST api/v1/Activities', body: user.to_json
  Quando('faco uma requisição POST para o serviço Users') do                   
    @payload_users = build(:user).user_hash
    @request_users = users.post_users(@payload_users)
  end                                                                          
                                                                               
  Entao('retornar o usuario criado') do                                        
    expect(@request_users['ID']).to eql @request_users[:ID]
    expect(@request_users['UserName']).to eql @request_users[:UserName]
    expect(@request_users['Password']).to eql @request_users[:Password]
    print @payload_users
  end 
 
  Quando('faco uma requisição PUT para o serviço Users') do
    @put_users = build(:user_put).user_put
    @request_users = users.post_users(@put_users)
  end
  
  Entao('retornar o usuario alterado') do
    expect(@request_users['ID']).to eql @request_users[:ID]
    expect(@request_users['Title']).to eql @request_users[:Title]
    expect(@request_users['DueDate']).to eql @request_users[:DueDate]
    expect(@request_users['Completed']).to eql @request_users[:Completed]
    print @put_users
    
    
  end 
  