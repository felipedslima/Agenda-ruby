class Contato < ActiveRecord::Base
    attr_accessible :nome, :email, :telefone, :endereco_id

    validates :nome, presence: true

    belongs_to :endereco
end