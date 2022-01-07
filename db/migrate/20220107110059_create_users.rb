class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firebase_id
      t.string :first_name
      t.string :last_name
      t.timestamp :birthdate

      t.timestamps
    end
  end
end
