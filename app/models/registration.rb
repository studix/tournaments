class Registration < ApplicationRecord
    belongs_to :tournament
    has_and_belongs_to_many :draws
    validates_presence_of :name, :first_name, :email, :tournament_id => " ist obligatorisch."
end
