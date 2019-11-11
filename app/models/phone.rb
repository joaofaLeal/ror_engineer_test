class Phone < ApplicationRecord
  belongs_to :user

  def self.check_phone_number(phone_number)
    phone = Phone.where({phone_number: phone_number})
    if phone.empty?
      true
    else
      false
    end
  end
end