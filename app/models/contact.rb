class Contact
  include ViewsHelpers::Model

  attr_accessor :name, :email, :comment

  validates :name, :email, :comment, :presence => true

  def send_email
    if self.valid?
      #code to send email
    else
      return false
    end
  end
end
