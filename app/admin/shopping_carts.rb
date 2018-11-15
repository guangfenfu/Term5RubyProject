ActiveAdmin.register ShoppingCart do
  permit_params :product_id, :customer_id, :quantity

end
