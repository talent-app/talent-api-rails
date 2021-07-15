class CreateTalentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :talent_types do |t|

      t.timestamps
    end
  end
end
