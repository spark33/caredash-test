class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :doctor_id, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
