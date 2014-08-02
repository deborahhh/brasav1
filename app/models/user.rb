class User < ActiveRecord::Base
  # Fields are name, email, graduation_year, major, university, gender, role
  validates :name, :email, :graduation_year, :major, :university, :role, :presence => true

  before_validation(on: :create) do
    if self.role.blank?
      self.set_regular!
    end
  end
  
  def set_regular!
    self.role = "regular"
  end
  
  def regular?
    self.role == "regular"
  end
  
  def set_admin!
    self.role = "admin"
  end
  
  def admin?
    self.role == "admin"
  end
end
