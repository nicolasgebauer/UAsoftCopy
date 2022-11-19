class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :email
      t.string :password
      t.string :phone
      t.text :ubication

      t.timestamps
    end
  end
end
