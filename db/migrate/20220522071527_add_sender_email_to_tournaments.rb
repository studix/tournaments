class AddSenderEmailToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :sender_email, :string
  end
end
