class AddAvatarToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :avatar, :string
  end
end
