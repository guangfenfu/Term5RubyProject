ActiveAdmin.register Customer do
  permit_params :name, :password, :address, :city, :province_id, :phone

end
