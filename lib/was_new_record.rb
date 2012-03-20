require 'active_support/concern'

module WasNewRecord
  extend ActiveSupport::Concern
  
  included do
    after_create :set_precommit_state
    after_update :clear_precommit_state
  end

  private

  def set_precommit_state
    @was_new_record = true
  end
  
  def clear_precommit_state
    @was_new_record = false
  end

  def was_new_record?
    persisted? && !!@was_new_record
  end
end

ActiveSupport.on_load(:active_record) do
  include WasNewRecord
end