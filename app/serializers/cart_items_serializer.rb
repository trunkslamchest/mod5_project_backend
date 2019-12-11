class CartItemsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :item, :user, :cart_quantity

  attribute :item do |obj|
      {
        id: obj.item.id,
        name: obj.item.name,
        img_url: obj.item.img_url,
        category: obj.item.category,
        price: obj.item.price,
        description: obj.item.description
      }
  end

  attribute :user do |obj|
    {
      id: obj.user.id,
      username: obj.user.username
    }
  end

end
