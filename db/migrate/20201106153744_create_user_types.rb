class CreateUserTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_types do |t|

      t.timestamps
    end
  end
end
