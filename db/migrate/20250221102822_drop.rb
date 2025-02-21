class Drop < ActiveRecord::Migration[8.0]
  def change
    drop_table :kinds
    drop_table :inputs
    drop_table :users
  end
end
