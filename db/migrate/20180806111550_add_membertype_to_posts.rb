class AddMembertypeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :membertype, :string
  end
end
