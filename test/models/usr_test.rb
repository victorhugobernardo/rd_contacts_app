require 'test_helper'

class UsrTest < ActiveSupport::TestCase
	
	def test_truth
		assert true
	end
  
	def test_should_be_invalid
		user = Usr.create
		assert !user.valid?, "User shouldn't be created"
	end
end
