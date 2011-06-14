WasNewRecord
============

Run `after_commit` callbacks on new Active Record instances.

Requires Rails ~> 3 and Ruby 1.9.2.

Usage
-----

  class User < ActiveRecord::Base
    include WasNewRecord
    
    after_commit :deliver_welcome, if: :was_new_record?
  end