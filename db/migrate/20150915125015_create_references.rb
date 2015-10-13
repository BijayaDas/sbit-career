class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
    	t.string :name, null: false, default: ""
    	t.string :duration
    	t.string :relationship
    	t.string :organization
    	t.string :designation
    	t.string :off_email
    	t.string :per_email
    	t.string :home_phone
    	t.string :office_phone
    	t.references :applicant
      t.timestamps
    end
  end
end
