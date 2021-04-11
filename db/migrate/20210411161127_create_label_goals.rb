class CreateLabelGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :label_goals do |t|
      t.references  :label,  index: true, foreign_key: true
      t.references  :goal,  index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
