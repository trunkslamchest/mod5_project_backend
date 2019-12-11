class ItemSerializer
  include FastJsonapi::ObjectSerializer
	attributes :name, :img_url, :category, :price, :description, :quantity
end
