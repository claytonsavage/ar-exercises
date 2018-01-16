class Store < ActiveRecord::Base
	has_many :employees
	validates :name, presence: true, length: { minimum: 3 }
	validates :annual_revenue, numericality: { greater_than: 0 }
	# validates :carry_items

	# def carry_item
	# 	if mens_apparel: false && womens_apparel: false
	# 		errors.add(:mens_apparel, "must carry some items")
	# 	end
	# end

end