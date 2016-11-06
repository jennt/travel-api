class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :route
      t.string :crew
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.json :task_list

      t.timestamps
    end
  end
end
