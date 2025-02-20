class CreateKinds < ActiveRecord::Migration[8.0]
  def change
    create_table :kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
