class CreateBuckets < ActiveRecord::Migration[6.1]
  def change
    create_table :buckets do |t|
      t.string :name
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
