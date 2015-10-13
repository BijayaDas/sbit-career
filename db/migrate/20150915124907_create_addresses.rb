class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :detail, null: false, default: ""
    	t.string :state, null: false, default: ""
    	t.string :city, default: ""
    	t.integer :pin, limit: 4
      t.integer :telephone, limit: 5
    	t.integer :address_type, limit: 2, default: 0
    	t.integer :mobile, limit: 5
    	t.references :applicant
      t.timestamps
    end
  end
end
