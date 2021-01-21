class Info < ApplicationRecord
  belongs_to :user

  validates :data_inicio, presence: true
  validates :data_fim, presence: true
  validates :peso, presence: true
  validates :peso_ideal, presence: true
  validates :altura, presence: true
end
