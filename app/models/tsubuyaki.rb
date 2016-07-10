class Tsubuyaki < ActiveRecord::Base
  belongs_to :user
  validates :tweet, presence: :true, length: { maximum: 140 }
  validates :user_id, presence: true

end
