class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.references :user
      t.references :category
      t.integer :priority
      t.integer :status
      t.datetime :start_date
      t.datetime :end_date
      t.text :remarks

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
