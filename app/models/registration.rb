class Registration < ApplicationRecord
    belongs_to :tournament
    has_many :draw_registrations
    accepts_nested_attributes_for :draw_registrations
    validates_presence_of :name, :first_name, :email, :tournament_id => " ist obligatorisch."
    validates_format_of :email, :with =>%r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]+)*(\.[a-z]{2,4})$}i, :message => " ist ungültig.", :multiline=> true
    validates_numericality_of :classing_value, :allow_nil => true, :message => " ist ungültig."
end
