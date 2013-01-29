class CostCenter < ActiveRecord::Base
	has_many :matrix_units
	has_many :profile_units
end
