class Store < ActiveRecord::Base
	has_many :employees
	validates :name, :annual_revenue, presence: true, length: { minimum: 3 }
	validate :income
 
  def income
    annual_revenue.to_i < 0
  end

end