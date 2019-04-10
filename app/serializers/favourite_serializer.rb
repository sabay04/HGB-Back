class FavouriteSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :formula_id
end