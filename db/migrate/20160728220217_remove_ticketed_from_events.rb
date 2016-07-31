class RemoveTicketedFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :ticketed?, :string
  end
end
