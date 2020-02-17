class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :admin, class_name: "User"



  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, length: { in: 5..140 }
  validates :description, length: { in: 20..1000 }
  validates :price, numericality: { greater_than_or_equal_to: 1, less_than: 1000 }
  validates :location, presence: true

  validate :event_cannot_be_in_the_past
  validate :multiple_of_5

    def event_cannot_be_in_the_past
      if start_date < Time.now
        errors.add(:start_date, "can't be in the past")
      end
    end

    def multiple_of_5
      errors.add(:duration, "must be a multiple of 5") unless duration % 5 == 0
    end

end

