class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :company
      t.string :email
      t.string :priority

      t.timestamps
    end
  end
end
