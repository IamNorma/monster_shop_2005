class User <ApplicationRecord
  validates_presence_of :name, :address, :city, :state, :zip, :role
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password, require: true

  has_many  :orders
  has_secure_password

  enum role: %w(regular merchant admin)
end
