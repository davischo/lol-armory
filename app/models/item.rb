# == Schema Information
#
# Table name: items
#
#  recipe_id            :integer
#  id                   :integer
#  name                 :string(255)
#  group                :string(255)
#  description          :text(65535)
#  sanitizedDescription :text(65535)
#  plaintext            :text(65535)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  tags                 :text(65535)
#  stats                :text(65535)
#  colloq               :string(255)
#  consumed             :boolean
#  consumeOnFull        :boolean
#  depth                :integer
#  effect               :text(65535)
#  hideFromAll          :boolean
#  inStore              :boolean
#  requiredChampion     :string(255)
#  specialRecipe        :integer
#  stacks               :integer
#

class Item < ActiveRecord::Base
  has_many :item_set_blocks
  has_many :images, as: :imageable
  has_many :ingredients, class_name: "Item", foreign_key: "ingredient_id"
  has_one :cost
  belongs_to :recipe, class_name: "Item"
end