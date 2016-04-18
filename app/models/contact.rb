class Contact < ActiveRecord::Base
	belongs_to :usr
	
	validates_presence_of :name, :mail
	validates_uniqueness_of :mail
	
end
