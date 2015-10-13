class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
    	t.string :degree, null: false, default: ""
    	t.string :specialization, default: ""
    	t.string :institute, null: false, default: ""
    	t.string :location, null: false, default: ""
    	t.string :graduation_year, null: false, default: ""
    	t.string :marks
    	t.references :applicant
      t.timestamps
    end
  end
end
