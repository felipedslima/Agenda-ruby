class CreateContatos < ActiveRecord::Migration
  def up
    create_table :contatos do |t|
      t.string :nome, null: false
      t.string :email
      t.integer :telefone
      t.timestamps
    end
  end

  def down
    drop_table :contatos
  end
end
