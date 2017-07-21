class Store < ActiveRecord::Base
  has_many :details
  has_many :shoes, through: :details
end
