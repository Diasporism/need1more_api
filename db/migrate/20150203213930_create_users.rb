class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :first_name
      t.string :last_name
      t.string :password_digest
    end

    add_index(:users, :email)
  end
end
