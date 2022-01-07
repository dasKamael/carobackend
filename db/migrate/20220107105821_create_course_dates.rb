class CreateCourseDates < ActiveRecord::Migration[7.0]
  def change
    create_table :course_dates do |t|
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
