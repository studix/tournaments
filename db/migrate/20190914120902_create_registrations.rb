class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :first_name
      t.string :phone
      t.string :email
      t.string :classing
      t.float :classing_value
      t.string :comment

      t.timestamps
    end
  end
end
