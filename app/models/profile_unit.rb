class ProfileUnit < ActiveRecord::Base
	belongs_to :matrix_units
	has_one :cost_center
	has_one :account
end
