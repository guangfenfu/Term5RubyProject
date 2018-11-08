ActiveAdmin.register Product do

  # permit_params :name, :price, :image_link, :description, :brand_id, :category_id
  permit_params :name, :price, :image_link, :description, :brand_id, product_categories: [:id, :product_id, :category_id, :_destroy]

  index do
    selectable_column
    column :id
    column :name
    column :brand
    column :price
    column :image_link
    column :description
    column :categories do |product|
      product.categories.map { |bg| bg.name }.join(", ").html_safe
    end
    actions
  end




  show do |product|
    attributes_table do
      row :name
      row :brand
      row :price
      row :image_link
      row :description
      row :categories do |product|
        product.categories.map { |bg| bg.name }.join(",").html_safe
      end
    end
  end




  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Product" do
      f.input :name
      f.input :brand
      f.input :price
      f.input :image_link
      f.input :description
      f.has_many :product_categories, allow_destroy: true do |n_f|
        n_f.input :category
      end
    end
    f.actions
  end

end
