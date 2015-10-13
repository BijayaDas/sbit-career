class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
    	t.string :name, null: false, default: ""
    	t.string :start
    	t.string :end
    	t.string :designation
    	t.string :emp_id
    	t.string :roles
    	t.string :address
    	t.string :phone
    	t.string :leaving_reason
    	t.string :supervisor_details
        t.boolean :supervisor_as_reference
    	t.integer :current
    	t.integer :company_streangth, limit: 5
    	t.string :sales_turnover
    	t.integer :notice_period
    	t.references :applicant
      t.timestamps
    end
  end
end
