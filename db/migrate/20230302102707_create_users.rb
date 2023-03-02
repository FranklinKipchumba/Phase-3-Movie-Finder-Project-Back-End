class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :user do |t|
      t.text :user_name
      t.text :email
      t.text :password
    end
  end
end
