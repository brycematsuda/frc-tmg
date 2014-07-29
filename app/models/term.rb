class Term < ActiveRecord::Base
  validates_presence_of :phrase, :definition
end
