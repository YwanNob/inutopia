class CreateInputs < ActiveRecord::Migration[8.0]
  def change
    create_table :inputs do |t|
      t.string :data
      t.references :kind, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
