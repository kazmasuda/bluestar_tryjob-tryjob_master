class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.integer :project
      t.integer :skill

      t.timestamps null: false
    end
  end
end
