class CreateTransaractGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :transaract_groups do |t|
      t.references :transaract, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
