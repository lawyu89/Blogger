class Blog < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
end
