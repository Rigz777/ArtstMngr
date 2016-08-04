class Event < ActiveRecord::Base
  belongs_to :accounts
  validates :description, presence: true
  validates :contact_person, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :website, presence: true
  validates :date, presence: true
  validates :time_of_performance, presence: true
  validates :location, presence: true
  validates :performance_type, presence: true
  validates :performance_length, presence: true
  validates :performance_price, presence: true


  def half_price_in_cents
    (performance_price.to_i) * 50
  end

end
