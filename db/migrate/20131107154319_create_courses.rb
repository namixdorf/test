class CreateCourses < ActiveRecord::Migration
  def change
    create_table :online_courses do |t|
      t.string :title
      t.belongs_to :category

      t.timestamps
    end
    create_table :classroom_courses do |t|
      t.string :title
      t.belongs_to :category

      t.timestamps
    end
  end
end
