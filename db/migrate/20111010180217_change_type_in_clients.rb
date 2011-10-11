class ChangeTypeInClients < ActiveRecord::Migration
  def self.up
    remove_column(:clients, :type)
    add_column(:clients, :client_type, :string)
  end

  def self.down
  end
end
