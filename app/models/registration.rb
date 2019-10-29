class Registration < ApplicationRecord
    belongs_to :tournament
    validates_presence_of :name, :first_name, :email, :tournament_id, :phone, :message => " ist obligatorisch."
end
