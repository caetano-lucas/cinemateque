class CreateActorRoles < ActiveRecord::Migration[8.0]
  def change
    create_table :actor_roles do |t|
      t.belongs_to :actor
      t.belongs_to :movie
      t.timestamps
    end
  end
end
