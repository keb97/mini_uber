class Member < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  accepts_nested_attributes_for :user
end
