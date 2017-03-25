class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :corpo
      t.string :categoria
      t.string :autor

      t.timestamps
    end
  end
end
