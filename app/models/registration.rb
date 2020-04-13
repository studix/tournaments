class Registration < ApplicationRecord
    belongs_to :tournament
    has_and_belongs_to_many :draws
    validates_presence_of :name, :first_name, :email, :tournament_id => " ist obligatorisch."
    validates_format_of :email, :with =>%r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]+)*(\.[a-z]{2,4})$}i, :message => " ist ungültig.", :multiline=> true
    validates_numericality_of :classing_value, :allow_nil => true, :message => " ist ungültig."
end
