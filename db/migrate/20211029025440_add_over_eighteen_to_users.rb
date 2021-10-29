class AddOverEighteenToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :over_eighteen, :boolean
  end
end
