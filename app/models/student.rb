class Student < ActiveRecord::Base
  validates :cell_phone,
    :home_phone,
    :work_phone,
    :length => {:maximum => 10}

  # require all fields but not work_phone:
  validates :first_name,
    :last_name,
    :email,
    :cell_phone,
    :home_phone,
    presence: true
  # validates :home_phone, :presence => true
  # pretend the name must be from these three families:
  validates :last_name, inclusion: {in: %w(Jones Smith Doe jones smith doe),
      message: "%{value} is not Jones, Smith, or Doe."}
end
