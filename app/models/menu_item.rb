class MenuItem < ApplicationRecord
  has_many :menu_item_values
  has_many :menu_item_variations

  validates :item_description, uniqueness: true

  CATEGORIES = {
    0 => "beverage",
    1 => "pastry",
    2 => "breakfast"
  }

  def category
    CATEGORIES[self.read_attribute(:category)]
  end

  def format_menu_item_value
      menu_item_values.select(:size_value, :price, :id)
  end

  def format_menu_item_variation
    menu_item_variations.select(:variation, :upcharge, :id)
  end
end
  