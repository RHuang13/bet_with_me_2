class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.text :scenario
      t.integer :bet
      t.boolean :winner

      t.timestamps

    end
  end
end
