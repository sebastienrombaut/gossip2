class Ragot < ApplicationRecord
  belongs_to :moussaillon

  validates :content, presence: true
end
