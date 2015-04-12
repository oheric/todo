class AddItemsAssociationToList < ActiveRecord::Migration
  def self.up 
    add_column :items, :list_id, :integer
    add_index 'items', ['list_id'], :name => 'index_list_id'
  end

  def self.down
    remove_column :items, :list_id
  end
end
