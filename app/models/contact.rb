class Contact < ApplicationRecord
  validates :name, presence: true, length: {maximum: 80}
  validates :surname, presence: true, length: {maximum: 80}
  validates :phone_number, presence: true, length: {maximum: 16}, numericality:  { only_integer: true }

  def to_label
    "#{name} #{surname}   [#{email}]   #{phone_number}"
  end
end
