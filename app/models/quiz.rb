# == Schema Information
#
# Table name: quizzes
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Quiz < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    
    has_many :mc_questions, dependent: :destroy
end
