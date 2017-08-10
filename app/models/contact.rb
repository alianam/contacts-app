class Contact < ApplicationRecord
  def display_updated_time
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    first_name + " " + last_name
  end

  def japanese_country_code
    # add +81 to numbers on index and show
    "+81" + " " + phone_number
  end

  def all_johns
    # return all contacts with first name John
  end
end
