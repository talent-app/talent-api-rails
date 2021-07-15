class CreatePhotoPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_posts do |t|

      t.timestamps
    end
  end
end
