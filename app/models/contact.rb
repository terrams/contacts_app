class Contact < ApplicationRecord
  belongs_to :user

  def self.all_joes
    Contact.where(first_name: "Joe")
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    first_name + " " + last_name
  end

  def country_qualified_phone_num
    result = "+81 " + phone_number
  end

end
