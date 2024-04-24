class CreateFilmes < ActiveRecord::Migration[7.1]
  def change
    create_table :filmes do |t|
      t.string :Titulo
      t.string :Autor
      t.string :Nota
      t.string :Descricao
      t.string :text

      t.timestamps
    end
  end
end
