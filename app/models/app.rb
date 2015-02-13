class App < ActiveRecord::Base
  belongs_to :category
  has_many :images, dependent: :destroy
  has_many :top10s, dependent: :destroy
  has_many :pros, dependent: :destroy
  has_many :cons, dependent: :destroy
  validates :name, :description, presence: true
end
