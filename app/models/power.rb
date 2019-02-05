class Power < ApplicationRecord
	has_many :mediator_powers
	has_many :mediators, through: :mediator_powers
end
