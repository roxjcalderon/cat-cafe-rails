module CatCafe
    class Base < Grape::API
        prefix 'api'

        mount CatCafe::V1::CafeItems
    end
end
   