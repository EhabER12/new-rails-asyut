class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true, length: { minimum: 10, maximum: 15 }
  validates :dob, presence: true
  
  validate :dob_cannot_be_in_future
  
  private
  
  def dob_cannot_be_in_future
    if dob.present? && dob > Date.current
      errors.add(:dob, "can't be in the future")
    end
  end
end
