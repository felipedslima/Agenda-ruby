class AddColumnEnderecoidToContatos < ActiveRecord::Migration
  def change
    add_column :contatos, :endereco_id, :integer
  end
end
