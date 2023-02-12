class Tournament < ApplicationRecord
    has_many :draws
    has_many :registrations
    has_one :sharing
    accepts_nested_attributes_for :draws
end
