class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :pokemonId
      t.string :name
      t.string :imagePath
      t.integer :weight
      t.integer :height
      t.decimal :price
      t.integer :userId

      t.timestamps
    end
  end
end
