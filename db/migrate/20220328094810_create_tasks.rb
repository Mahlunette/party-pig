class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :bucket, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :index
      t.string :status

      t.timestamps
    end
  end
end
