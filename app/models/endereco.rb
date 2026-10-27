class Endereco < ActiveRecord::Base
    attr_accessible :rua, :bairro, :numero

    validates :rua, :bairro, :numero, presence: true

    has_many :contatos
end