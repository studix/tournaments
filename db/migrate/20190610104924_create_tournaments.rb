class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string :title
      t.date :spielplan_verfuegbar_datum

      t.timestamps
    end
  end
end
