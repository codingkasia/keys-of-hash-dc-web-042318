class Patient < ApplicationRecord
    belongs_to :doctor
    validates :name, presence: true, uniqueness: true
   
end
