class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :icon
      t.references :author, references: :authors, null: false, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
