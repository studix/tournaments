class AddDrawInfo < ActiveRecord::Migration[5.2]
  change_table :draws do |t|
    t.string :registration_info
  end
end
