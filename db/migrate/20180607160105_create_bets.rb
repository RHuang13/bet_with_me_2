class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :name
      t.text :description
      t.integer :bet_size
      t.integer :owner
      t.integer :results

      t.timestamps

    end
  end
end
