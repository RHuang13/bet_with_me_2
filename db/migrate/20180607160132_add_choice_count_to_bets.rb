class AddChoiceCountToBets < ActiveRecord::Migration[5.0]
  def change
    add_column :bets, :choices_count, :integer
  end
end
