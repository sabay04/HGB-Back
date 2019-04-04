class AreaSerializer < ActiveModel::Serializer
  attributes :id, :name, :concerns, :categories

  def categories
    object.categories.map do |cat|
      {
        'name' => cat.name,
        'id' => cat.id
      }
    end 
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
