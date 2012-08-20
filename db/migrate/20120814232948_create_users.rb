class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps
      t.string  :user_name
      t.string  :password


    end
  end
end
