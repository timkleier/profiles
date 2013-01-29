class MatrixUnit < ActiveRecord::Base
	has_many :profile_units
	has_one :cost_center
	has_one :account
end
