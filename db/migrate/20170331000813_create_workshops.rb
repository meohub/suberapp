class CreateWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :workshops do |t|
      t.text :title
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
