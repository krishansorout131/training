class Patient < ApplicationRecord
  #validates :address, exclusion: { in: %w(delhi gurugram), message: "%{value} is reserved." }
  #validates :address, inclusion: { in: %w(hodal palwal faridabad), message: "not accepting %{value}"}, allow_blank: true #allow_nil: true
  validates :name, length: { minimum: 3 , message: "name should be greater then 3 words"}
  has_many :opd_details
  has_many :employees, through: :opd_details
  #has_one :opd_detail
  #has_and_belongs_to_many :employees
  
  #after_validation :addres_change, if: :address_empty?
  #before_save :check
  #after_save :after_check
  #around_save :around_check
  validate :age_check
  #after_initialize :initialize_obj
  #after_find :find_record
  #after_commit :patient_created
  
  private
  def address_empty?
    if self.address == nil
      return true
    else
      return false
    end
  end

  def addres_change
    self.address = "delhi"
  end
  def check
    self.name.downcase!
  end
  def around_check
    self.name.upcase!
    yield
    puts "new value saved #{self.name}"
  end  
  
  def after_check
    self.name.capitalize!
  end  
  def age_check
    age = ((Time.zone.now - self.dob.to_time) / (1.year.seconds)).to_i
    if age < 8
      self.errors.add :dob, "Patient's age must be greater than 8 year"
    end
  end 
  
  def initialize_obj
    puts "A new object is initailized"
  end  
  def find_record
    puts "#{name} is present in database"
  end
  def patient_created
    puts "patient created successfully"
  end  
end  
