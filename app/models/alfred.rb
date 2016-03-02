class Alfred < ActiveRecord::Base
  validates_formatting_of :alfred, using: :url
end
