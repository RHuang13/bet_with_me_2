class AddFollowerCountToChoices < ActiveRecord::Migration[5.0]
  def change
    add_column :choices, :followers_count, :integer
  end
end
