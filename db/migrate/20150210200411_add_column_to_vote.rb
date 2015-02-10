class AddColumnToVote < ActiveRecord::Migration
  def change
    add_column :votes, :votable_id, :integer
    add_column :votes, :type, :string
  end
end
