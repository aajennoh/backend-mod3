class CreateUserContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contacts do |t|
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
