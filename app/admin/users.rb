ActiveAdmin.register User do

  menu parent: "사용자 관리"

    scope :all
    scope :supply
    scope :demand

    index do
    selectable_column
    id_column
    column :user_type
    column :email
    column :name
    column :created_at
    column :updated_at

    actions
  end
  
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
