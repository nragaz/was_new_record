require 'test_helper'

class WasNewRecordTest < ActiveSupport::TestCase
  self.use_transactional_fixtures = false
  
  teardown do
    User.destroy_all
  end
  
  test "unlock new user after committing" do
    user = User.new(locked_at: Time.zone.now)
    
    assert user.locked_at?
    
    user.save
    assert !user.locked_at?
  end
end
