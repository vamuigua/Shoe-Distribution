class Shoe < ActiveRecord::Base
  belongs_to :brand
  belongs_to :store

  #validated presence of a name
  validates(:name, :presence => true)
  #capitalize the name before saving
  before_save(:titlecase_name)

  private
  define_method(:titlecase_name) do
    self.name=(name().titlecase())
  end
end
