class Contact < ApplicationRecord

  def self.find_by_first_name(name)
   self.select{ |firstname| firstname == name}
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    result = first_name + " " + last_name
  end

  def country_qualified_phone_num
    result = "+81 " + phone_number
  end

end
