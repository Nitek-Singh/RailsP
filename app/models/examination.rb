# == Schema Information
#
# Table name: examinations
#
#  id            :integer          not null, primary key
#  college_name  :string
#  department    :string
#  email         :string
#  full_name     :string
#  mobile_number :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Examination < ApplicationRecord
    validates :full_name, :email, :department, :college_name, :mobile_number, presence: true
end
