class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :employee_email
      t.string :nickname

      t.timestamps
    end
  end
end
