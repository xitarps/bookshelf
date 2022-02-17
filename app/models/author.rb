class Author < ApplicationRecord
  def reverse_full_name
    "#{first_name} #{last_name}".reverse
  end

  def coordinates
    [rand(90), rand(90)]
  end
end
