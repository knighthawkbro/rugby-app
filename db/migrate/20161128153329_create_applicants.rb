class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :school
      t.string :year
      t.text :experience

      t.timestamps
    end
  end
end
