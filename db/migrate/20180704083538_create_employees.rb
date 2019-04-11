class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :employee
      t.belongs_to :company, index: true
      t.timestamps
    end
  end
end
