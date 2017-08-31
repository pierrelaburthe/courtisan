class Chatroom < ApplicationRecord
  belongs_to :seducer, class_name: "User"
  belongs_to :seduced, class_name: "User"

  has_many :discussions, dependent: :destroy
end
