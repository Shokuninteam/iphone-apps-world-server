class App < ActiveRecord::Base
  belongs_to :category
  has_many :images, dependent: :destroy
  has_many :top10s
  has_many :pros
  has_many :cons
  validates :name, :description, presence: true
end
