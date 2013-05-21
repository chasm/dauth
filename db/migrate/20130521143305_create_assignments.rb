class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :role
      t.references :user

      t.timestamps
    end
    add_index :assignments, :role_id
    add_index :assignments, :user_id
  end
end
