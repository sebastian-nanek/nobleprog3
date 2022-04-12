class AddIndexOnTtitleToPosts < ActiveRecord::Migration[7.0]
  def change
    add_index :posts, :title
  end
end
