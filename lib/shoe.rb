class Shoe < ActiveRecord::Base
  has_many :details
  has_many :stores, through: :details
end
