class Author < ApplicationRecord
  def reverse_full_name
    "#{first_name} #{last_name}".reverse
  end

  def coordinates
    [rand(90), rand(90)]
  end

  def publication_years
    #fake array of years
    (1..rand(10)).to_a.map { 2022 - rand(23) }.uniq.sort { |a,b| b <=> a}
  end
end
