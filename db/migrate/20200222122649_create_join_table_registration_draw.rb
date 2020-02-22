class CreateJoinTableRegistrationDraw < ActiveRecord::Migration[5.1]
  def change
    create_join_table :registrations, :draws do |t|
      t.references :registration
      t.references :draw
      t.index [:registration_id, :draw_id]
    end
  end
end
