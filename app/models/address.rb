class Address < ActiveRecord::Base
  attr_accessible :street_1, :street_2, :city, :state, :zip

  validates :entity_id, presence: { message: 'must belong to some kind of entity' }
  validates :street_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
end
