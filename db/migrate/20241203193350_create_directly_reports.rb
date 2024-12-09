class CreateDirectlyReports < ActiveRecord::Migration[8.0]
  def change
    create_table :directly_reports do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :title

      t.timestamps
    end
  end
end
