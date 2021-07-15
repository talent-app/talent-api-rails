class CreateAgentConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :agent_connections do |t|

      t.timestamps
    end
  end
end
