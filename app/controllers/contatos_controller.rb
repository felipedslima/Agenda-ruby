class ContatosController < ApplicationController

    before_filter :carrega_enderecos, :only => [:new, :update, :create, :edit]

    def index
        @contatos = Contato.all || ""
    end

    def new 
        @contato = Contato.new
    end

    def create
        @contato = Contato.new(params[:contato])
        if @contato.save
            flash[:success] = "Contato criado com sucesso"
            redirect_to contatos_path()
        else
           # flash[:error] = @contato.errors.full_messages
           flash[:error] = "Nome não pode ser vazio"
            render :new
        end
    end

    def destroy
        @contato = Contato.find_by_id(params[:id])
        @contato.destroy 
        redirect_to contatos_path
    end

    def edit
        @contato = Contato.find_by_id(params[:id])
    end

    def update
        @contato = Contato.find_by_id(params[:id])
        @contato.update_attributes(params[:contato])
        if @contato.save
            flash[:success] = "Contato editado com sucesso"
            redirect_to contatos_path()
        else
           # flash[:error] = @contato.errors.full_messages
            flash[:error] = "Nome não pode ser vazio"
            render :edit
        end
    end

    def show
        @contato = Contato.find_by_id(params[:id])
    end

    private

    def carrega_enderecos
        @enderecos = Endereco.all
    end
end