# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


latte = MenuItem.create(item_description: "latte", category: 0, size_type: "oz")
if latte && latte.id
    MenuItemVariation.create(variation: "oatmilk", upcharge: 1.00, menu_item_id: latte.id)
    MenuItemVariation.create(variation: "almond milk", upcharge: 0.50,  menu_item_id: latte.id)
    MenuItemVariation.create(variation: "vanilla", menu_item_id: latte.id)
    MenuItemVariation.create(variation: "mocha", menu_item_id: latte.id)
    MenuItemValue.create(size_value: "12", price: 3.00,  menu_item_id: latte.id)
    MenuItemValue.create(size_value: "16", price: 4.00,  menu_item_id: latte.id)
    MenuItemValue.create(size_value: "20", price: 6.00,  menu_item_id: latte.id)
end 

coffee = MenuItem.create(item_description: "coffee", category: 0)
if coffee && coffee.id
    MenuItemValue.create(size_value: "12", price: 2.00,  menu_item_id: coffee.id)
    MenuItemValue.create(size_value: "16", price: 3.00,  menu_item_id: coffee.id)
    MenuItemValue.create(size_value: "20", price: 4.00,  menu_item_id: coffee.id)
end

tea = MenuItem.create(item_description: "tea", category: 0)
if tea && tea.id
    MenuItemValue.create(size_value: "12", price: 2.00,  menu_item_id: tea.id)
end

bagel = MenuItem.create(item_description: "bagel", category: 1)
if bagel && bagel.id
    MenuItemValue.create(price: 4.00,  menu_item_id: bagel.id)
end
croissant = MenuItem.create(item_description: "croissant", category: 1)
if croissant && croissant.id
    MenuItemValue.create(price: 3.50,  menu_item_id: croissant.id)
end
pain = MenuItem.create(item_description: "pain au chocolat", category: 1)
if pain && pain.id
    MenuItemValue.create(price: 4.50,  menu_item_id: pain.id)
end

burrito = MenuItem.create(item_description: "burrito", category: 2)
if burrito && burrito.id
    MenuItemValue.create(price: 4.00,  menu_item_id: burrito.id)
end

sandwich = MenuItem.create(item_description: "sandwich", category: 2)
if sandwich && sandwich.id
    MenuItemValue.create(price: 6.00,  menu_item_id: sandwich.id)
end

fruit = MenuItem.create(item_description: "fresh fruit", category: 2)
if fruit && fruit.id
    MenuItemValue.create(price: 2.50,  menu_item_id: fruit.id)
end