class Mediator < ApplicationRecord

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :location, :description ],
    using: {
      tsearch: { prefix: true }
    }
  has_many :mediator_powers, dependent: :destroy
  has_many :powers, through: :mediator_powers

  has_many :bookings, dependent: :destroy

  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :location, :photo, :price, presence: true
  mount_uploader :photo, PhotoUploader
end
