class AddFollowCountToBets < ActiveRecord::Migration[5.0]
  def change
    add_column :bets, :follows_count, :integer
  end
end
