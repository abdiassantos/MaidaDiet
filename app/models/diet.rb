class Diet < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :horario, presence: true
  validates :meal_id, presence: true
  validates :descricao, presence: true
end
