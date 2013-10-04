require_relative '../../db/config'

class Student < ActiveRecord::Base
  # attr_reader :age
  validates :email, :format => { :with => /[a-zA-Z0-9.]+@[a-zA-Z0-9.]+\.[A-Za-z]{2,4}/}
  validates :email, :uniqueness => true
  validate :check_age
  # validates :phone,
  def name
    self.first_name + " " + self.last_name
  end

  def age
    return 0 unless birthday
    Time.now.year - self.birthday.year
  end

  def check_age
    unless age > 5
      errors.add(:birthday, 'nice try')
    end
  end
end


