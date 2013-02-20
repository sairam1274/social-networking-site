class StatusUpdate < ActiveRecord::Base
  attr_accessible :body, :timestamp, :to_user_id, :user_id
  validates :body, :presence => true
  belongs_to :user
  belongs_to :to_user_update, :class_name => "User", :foreign_key => "to_user_id"
  has_many :comments, :dependent => :destroy
  has_many :likes, :as => :liker, :dependent => :destroy
end
