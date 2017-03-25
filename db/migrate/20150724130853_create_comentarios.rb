class CreateComentarios < ActiveRecord::Migration
  
  def change
    create_table :comentarios do |t|
      t.string :nome
      t.text :corpo
      t.references :post, index: true

      t.timestamps
    end
    
  end
end
