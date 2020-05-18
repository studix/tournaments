class AddDrawRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :draw_registrations do |t|
      t.belongs_to :draw
      t.belongs_to :registration
      t.boolean :is_registered
      t.string :partner
      t.timestamps
    end
  end
end
