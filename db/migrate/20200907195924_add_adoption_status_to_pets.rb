class AddAdoptionStatusToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :adoption_status, :string 
  end
end
