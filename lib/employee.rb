class Employee < ActiveRecord::Base
	belongs_to :store
	validates :first_name, :last_name, :store, presence: true
	validate :wage

  def wage
    if hourly_rate > 200
      # errors.add(:hourly_rate, “cannot be above 200”)
    elsif hourly_rate < 40
      # errors.add(:hourly_rate, “cannot be below 40”)
    end
  end
end


# Employees must always have a first name present
# Employees must always have a last name present
# Employees have a hourly_rate that is a number (integer) between 40 and 200
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)