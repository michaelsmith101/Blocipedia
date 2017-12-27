class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :wiki_collaborations
  has_many :collaborators, class_name: 'User', source: :user, through: :wiki_collaborations
end
