class Taskblock < ActiveRecord::Base
	attr_accessible :description

	validates :description, presence: true

	belongs_to :user
	validates :description, presence: true

end
