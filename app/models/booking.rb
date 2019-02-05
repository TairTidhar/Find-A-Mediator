class Booking < ApplicationRecord
  belongs_to :mediator
  belongs_to :user

  validates :start_date, presence: true, allow_blank: false
  validates :end_date, presence: true, allow_blank: false
end
