class Author < ApplicationRecord
  def reverse_full_name
    "#{first_name} #{last_name}".reverse
  end
end
