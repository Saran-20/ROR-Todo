class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :task
      t.string :due_date
      t.boolean :completed
      t.timestamps
    end
  end
end
