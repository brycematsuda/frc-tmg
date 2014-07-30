class Term < ActiveRecord::Base
  validates_presence_of :phrase, :definition

  belongs_to :user
  has_and_belongs_to_many :categories
end
