class AddColumnToVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :type
    add_column :votes, :votable_type, :string
  end
end
