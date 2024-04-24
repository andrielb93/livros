class CreateLivros < ActiveRecord::Migration[7.1]
  def change
    create_table :livros do |t|
      t.string :Título
      t.string :Autor
      t.string :Nota
      t.string :Descricao

      t.timestamps
    end
  end
end
