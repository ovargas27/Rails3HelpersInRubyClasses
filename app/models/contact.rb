class Contact
  include ActiveModel::Validations

  attr_accessor :name, :email, :comment

  validates :name, :email, :comment, :presence => true

end
