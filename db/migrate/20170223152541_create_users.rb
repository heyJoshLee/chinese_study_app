class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps
      t.string :username, :email, :password_digest, :slug
    end
  end
end
