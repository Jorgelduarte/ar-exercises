class Store < ActiveRecord::Base
    has_many :employees
    validates_length_of :name, minimum: 3
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
    validate :least_men_or_women
end


def least_men_or_women
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel,  "must be present")
      errors.add(:womens_apparel,  "must be present")
    end
end