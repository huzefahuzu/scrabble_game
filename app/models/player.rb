class Player < ApplicationRecord
  has_many :participants, dependent: :destroy

  validates_presence_of :full_name, :email
end
