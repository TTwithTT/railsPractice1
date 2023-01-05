class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :startedDay
      t.datetime :endedDay
      t.boolean :allDay
      t.datetime :updatedDay
      t.string :description

      t.timestamps
    end
  end
end
