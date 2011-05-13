class Contact
  extend ActiveModel::Naming
  include ActiveModel::Validations

  attr_accessor :name, :email, :comment

  validates :name, :email, :comment, :presence => true

  def attributes=(attrs)
    attrs.each_pair { |name, value| self.send("#{name}=", value) }
  end

  def persisted?
    false
  end

  def new_record?
    true
  end

  def to_model
    self
  end

  def to_key
    [object_id]
  end

  def to_param
    nil
  end

  def send_email
    if self.valid?
      #code to send email
    else
      return false
    end
  end
end
