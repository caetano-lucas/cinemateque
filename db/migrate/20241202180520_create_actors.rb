class CreateActors < ActiveRecord::Migration[8.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :nationality
      t.integer :birth

      t.timestamps
    end
  end
end
