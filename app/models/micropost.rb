class Micropost < ActiveRecord::Base
    belongs_to :user
    default_scope -> {order('create_at DESC')}
    validates :content, presence: ture, length: {maximum: 140}
    validates :user_id, presence: true
end
