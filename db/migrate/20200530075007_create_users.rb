class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
      # Now populate the users table with default user
      User.create :email => 'info@tcdulliken.ch', :password => 'du4657ken'
  end
end
