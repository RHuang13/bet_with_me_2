class AddBetCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bets_count, :integer
  end
end
