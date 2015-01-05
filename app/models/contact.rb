class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :state, presence: true
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :full_name, :location, presence: true



  def full_name
    [first_name, last_name].join(' ')
  end

  def location
    [city, state].join(', ')
  end

  def self.alphabetically
    order('LOWER(first_name) ASC')
  end
end
