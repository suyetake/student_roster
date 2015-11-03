class Student < ActiveRecord::Base
  validates :cell_phone, :home_phone, :work_phone, :length => { :maximum => 10 }
  validates :home_phone, presence: true
  # validates :home_phone, :presence => true
  validates :home_phone, :on 

end
