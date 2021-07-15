class CreateAgentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :agent_profiles do |t|

      t.timestamps
    end
  end
end
