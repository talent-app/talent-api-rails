class CreateAgencyConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :agency_connections do |t|

      t.timestamps
    end
  end
end
