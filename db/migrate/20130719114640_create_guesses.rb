class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :attempt
      t.integer :correct
      t.belongs_to :round
      t.belongs_to :card
      t.timestamps
    end
  end
end
