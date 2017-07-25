class Brand < ActiveRecord::Base
  has_many :shoes
  has_many :stores, through: :shoes

  #Validates presence of a name
  validates(:name, presence: true)
  #capitalize the name before save
  before_save(:titlecase_name)

  private
  define_method(:titlecase_name) do
    self.name=(name().titlecase())
  end
end
