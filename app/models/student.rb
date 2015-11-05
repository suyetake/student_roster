class Student < ActiveRecord::Base
  validates :cell_phone, :home_phone, :work_phone, :length => {:maximum => 10}
  validates :home_phone, presence: true
  # validates :home_phone, :presence => true
  validates :last_name, inclusion: {in: %w(Jones Smith Doe jones smith doe),
      message: "%{value} is not Jones, Smith, or Doe."}
end
