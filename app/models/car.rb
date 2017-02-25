class Car < ApplicationRecord
  belongs_to :user
  has_many :engines
  has_many :performances
  has_many :transmissions
  has_many :dimensions
  has_many :comments

  has_attached_file :image, styles: { medium: "450x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  accepts_nested_attributes_for :engines, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :performances, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :transmissions, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :dimensions, reject_if: :all_blank, allow_destroy: true

  validates :name, :company, :image, presence: true
end
