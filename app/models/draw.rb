class Draw < ApplicationRecord
    belongs_to :tournament
    has_and_belongs_to_many :registrations
end
