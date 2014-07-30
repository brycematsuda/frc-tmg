class Term < ActiveRecord::Base
  validates_presence_of :phrase, :definition

  belongs_to :admin
  has_and_belongs_to_many :categories

  def owned_by?(owner)
    return false unless owner.is_a?(Admin)
    admin == owner
  end
end
