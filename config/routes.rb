Teste::Application.routes.draw do

    # CONTATOS
    # Listar os contatos
    get 'contatos', to: 'contatos#index', as: :contatos
    
    # Abrir o formulário de cadastro
    get 'contatos/new', to: 'contatos#new', as: :new_contato
    
    # Salvar um novo contato
    post 'contatos', to: 'contatos#create', as: :criar_contato
    
    delete 'contatos/:id', to:'contatos#destroy', as: :destroy_contato

    get 'contatos/:id/edit', to: 'contatos#edit', as: :edit_contato

    put 'contato/:id', to: 'contatos#update', as: :contato

    get 'contato/:id', to:'contatos#show', as: :contato

    #ENDEREÇOS
    get 'enderecos', to: 'enderecos#index', as: :enderecos
    
    get 'enderecos/new', to: 'enderecos#new', as: :new_endereco
    
    post 'enderecos', to: 'enderecos#create', as: :criar_endereco
    
    delete 'enderecos/:id', to:'enderecos#destroy', as: :destroy_endereco

    get 'enderecos/:id/edit', to: 'enderecos#edit', as: :edit_endereco

    put 'endereco/:id', to: 'enderecos#update', as: :endereco

    get 'endereco/:id', to:'enderecos#show', as: :endereco

end