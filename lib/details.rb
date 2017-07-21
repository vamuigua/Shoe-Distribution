class Details < ActiveRecord::Base
  belongs_to :shoes
  belongs_to :stores
end
