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
require "test_helper"

class ExaminationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
