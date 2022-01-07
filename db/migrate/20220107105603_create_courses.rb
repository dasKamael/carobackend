class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :capacity
      t.boolean :is_single

      t.timestamps
    end
  end
end
