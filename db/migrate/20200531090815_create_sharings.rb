class CreateSharings < ActiveRecord::Migration[5.2]
  def change
    create_table :sharings do |t|
      t.integer :tournament_id
      t.string :key

      t.timestamps
    end
  end
end
