ActiveAdmin.register Product do

  permit_params :name, :price, :image_link, :description, :brand_id, :category_id


end
