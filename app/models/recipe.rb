class Recipe < ActiveRecord::Base
  belongs_to :user
  validates :name, presence:true
  validates :user_id, presence:true

  def user_name=(name)
    self.user = User.find_or_create_by(name:name)
  end

  def user_name
    self.user ? self.user.name : ""
  end
end
