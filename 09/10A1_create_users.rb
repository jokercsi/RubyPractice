class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :loginname
      t.string :name
      t.string :email
      t.string :role
      t.string :password_digest

      t.timestamps
    end
  end
end
