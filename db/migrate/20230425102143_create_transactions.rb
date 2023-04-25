class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :transactionId
      t.integer :action
      t.integer :userId
      t.integer :pokemonId

      t.timestamps
    end
  end
end
