class RemoveOverEighteenFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :over_eighteen, :string
  end
end
