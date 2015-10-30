class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
	    t.string   :first_name,           default: "", null: false
	    t.string   :middle_name,          default: ""
	    t.string   :last_name,            default: "", null: false
	    t.string   :dob,                  default: "", null: false
	    t.string   :email,                default: "", null: false
	    t.string   :profile_pic
	    t.string   :nationality
	    t.boolean  :work_permit_india
	    t.string   :other_nationality_detail
	    t.boolean  :passport
	    t.string  :passport_no
	    t.string   :passport_valid_till
	    t.integer  :gender, default: 0
	    t.boolean  :visa_denied
	    t.string   :visa_denied_detail
	    t.boolean  :overseas_assignments
	    t.string   :overseas_assignments_detail
	    t.boolean  :major_illness
	    t.string   :major_illness_detail
	    t.boolean  :convicted
	    t.string   :convicted_detail
	    t.boolean  :have_bond
	    t.string   :others
	    t.string   :date
	    t.string   :place
	    t.string   :sign
	    t.integer  :status
      t.timestamps
    end
  end
end
