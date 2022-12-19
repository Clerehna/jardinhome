class Prestation < ApplicationRecord
CATEGORY = ["Entretien", "Conception", "Réalisation"]
belongs_to :user
has_many :buyings, dependent: :destroy

validates :name, presence: true
validates :description, presence: true
validates :price, presence: true
validates :category, presence: true
end
