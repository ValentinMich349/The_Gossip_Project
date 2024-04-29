class AddCityReferenceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :city, null: false, foreign_key: true
  end
end