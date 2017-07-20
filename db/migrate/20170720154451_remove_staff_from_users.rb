class RemoveStaffFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :staff, :boolean
  end
end
