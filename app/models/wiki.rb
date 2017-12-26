class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :wiki_collaborations
  has_many :collaborators, class_name: 'User', source: :user, through: :wiki_collaborations
end

#make sure that only private wikis have collaborators - this is kind of taken care of by the nature of the structure..
#public wikis can have collaborators, this is fine, its just redundant. 
#you only really need to worry about adding them when its private, which the UI should take care of right?
#make a UI within a wiki thats only viewable by admins and premium users that created that wiki that allows them to add collaborators
