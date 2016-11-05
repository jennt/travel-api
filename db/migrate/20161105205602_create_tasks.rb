class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :route, index: true, foreign_key: true
      t.string :task_name
      t.boolean :completed

      t.timestamps
    end
  end
end
