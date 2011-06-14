class User < ActiveRecord::Base
  after_commit :unlock, if: :was_new_record?
  
  def unlock
    update_attribute :locked_at, nil
  end
end
