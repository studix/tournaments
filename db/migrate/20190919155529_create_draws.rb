class CreateDraws < ActiveRecord::Migration[5.1]
  def change
    create_table :draws do |t|
      t.integer :tournaments_id
      t.boolean :is_single
      t.string :title

      t.timestamps
    end
  end
end
