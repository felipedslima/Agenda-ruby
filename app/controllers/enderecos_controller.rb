class EnderecosController < ApplicationController
    def index
        @enderecos = Endereco.all || ""
    end

    def new 
        @endereco = Endereco.new
    end

    def create
        @endereco = Endereco.new(params[:endereco])
        if @endereco.save
            redirect_to enderecos_path
        else
            render :new
        end
    end

    def destroy
        @endereco = Endereco.find_by_id(params[:id])
        @endereco.destroy 
        redirect_to enderecos_path
    end

    def edit
        @endereco = Endereco.find_by_id(params[:id])
    end

    def update
        endereco = Endereco.find_by_id(params[:id])
        endereco.update_attributes(params[:endereco])
        redirect_to enderecos_path()
    end

    def show
        @endereco = Endereco.find_by_id(params[:id])
    end
end