class Weight < ApplicationRecord

    belongs_to :user

    validates :peso_atual, presence: true

end
