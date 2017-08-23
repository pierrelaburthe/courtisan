class Challenge < ApplicationRecord
  belongs_to :seducer1, class_name: "User"
  belongs_to :seducer2, class_name: "User"
  belongs_to :seduced, class_name: "User"
  has_one :winner, class_name: "User"

  has_many :messages, dependent: :destroy

end
