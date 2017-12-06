class Store < ActiveRecord::Base
  has_many :employees

   validates :name, length: { minimum: 3 }
   validates :annual_revenue, numericality: { :greater_than => 0 }
   validate :apparel

   def apparel
    if mens_apparel != true && womens_apparel != true
      errors.add(:mens_apparel , " cannot be false if women's apparel is false")
      errors.add(:womens_apparel, "cannot be false if men's apparel is false")
    end

   end



end
