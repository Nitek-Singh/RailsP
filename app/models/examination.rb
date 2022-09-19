class Examination < ApplicationRecord
    validates :full_name, :email, :department, :college_name, :mobile_number, presence: true
end
