class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :location
      t.string :theme
      t.integer :group

      t.timestamps
    end
  end
end
