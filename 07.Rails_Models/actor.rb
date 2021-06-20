class Actor < ApplicationRecord
    # Check presence for all fields except weight (some actors/actresses do not make that public)
    validates :name, presence: true
    validates :real_name, presence: true
    validates :birth_date, presence: true
    validates :origin, presence: true
    validates :height, presence: true
    validates :gender, presence: true
    validates :blood_type, presence: true
    
    # Check for integer value for height
    validates :height, numericality: { only_integer: true}
    
    # Check for sensible lower and upper bounds for height and weight (if present)
    validates :height, numericality: { greater_than: 0, less_than: 250 }
    validates :weight, numericality: { greater_than: 0, less_than: 300 }
    
    # Check for allowed values for gender and blood_type
    validates :gender, inclusion: { in: ['Male', 'Female'] }
    validates :blood_type, inclusion: { in: ['A', 'B', 'O', 'AB'] }
end
