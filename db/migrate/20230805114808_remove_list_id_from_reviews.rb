class RemoveListIdFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :list_id, :bigint
  end
end
