class Matrix < ActiveRecord::Base
	attr_accessible :year, :period, :profile_type, :status, :cost_center_id, :account_id, :amount
	has_many :profiles
end
