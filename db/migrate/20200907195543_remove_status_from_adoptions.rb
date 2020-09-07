class RemoveStatusFromAdoptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :adoptions, :status, :boolean
  end
end
