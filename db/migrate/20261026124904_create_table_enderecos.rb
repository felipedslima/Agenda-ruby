class CreateTableEnderecos < ActiveRecord::Migration
  def up
    create_table :enderecos do |t|
      t.string :rua
      t.string :bairro
      t.integer :numero
      t.timestamps
    end
  end

  def down
    drop_table :enderecos
  end
end
