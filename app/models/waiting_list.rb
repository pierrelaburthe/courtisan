class WaitingList < ApplicationRecord
  belongs_to :seduced, class_name: "User"
  belongs_to :seducer1, class_name: "User"
  belongs_to :seducer2, class_name: "User", optional: true
end

