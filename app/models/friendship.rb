class Friendship < ApplicationRecord
    belongs_to :friend, class_name: "User", foreign_key: :friend_id
    belongs_to :friender, class_name: "User", foreign_key: :friender_id
end
