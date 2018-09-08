ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :body, :published_at, :user_id
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  member_action :publish, method: :put do
    post = Post.find(params[:id])
    post.update(created_at: Time.zone.now)
    redirect_to admin_post_path(post)
  end
  action_item :publish, only: :show do
    link_to "publish", publish_admin_post_path(post), method: :put unless post.created_at?
  end
  action_item :unpublish, only: :show do
    link_to "unpublish", unpublish_admin_post_path(post), method: :put if post.created_at?
  end
    
  member_action :unpublish, method: :put do
    post = Post.find(params[:id])
    post.update(published_at: nil)
    redirect_to admin_post_path(post)
  end
  scope :all
  scope :published
  scope :unpublished
end
