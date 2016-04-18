class CustomField < ActiveRecord::Base
	belongs_to :usr
	validates_presence_of :field, :field_type
end
