class AreaSerializer < ActiveModel::Serializer
  attributes :id, :name, :concerns

  def category 
    object.category.name
  end 
  def concerns
    object.area_concerns.map do |ac|
      {
        'name' => ac.concern.name,
        'id' => ac.concern.id
      }
    end 
  end 
end
