module CatCafe
  module V1
    class CafeItems < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      # add authentication for this
      resource :cafe_items do
        desc 'Return a list of cafeItems'
        get do
          cafe_items = MenuItem.all
          
          # small list now. in the future do we want to enhance to make less db calls? 
          formatted_cafe_items = cafe_items.map do | item | 
            {
              id: item.id,
              item_description: item.item_description.capitalize, 
              category: item.category, 
              size_type: item.size_type,
              values: item.format_menu_item_value, 
              variations: item.format_menu_item_variation
            }
          end 

          formatted_cafe_items = formatted_cafe_items.group_by do |value|
             value[:category].capitalize
          end

          present formatted_cafe_items
        end
      end
    end
  end
end
  