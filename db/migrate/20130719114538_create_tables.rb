class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username
      
      t.timestamps 
    end
    create_table :rounds do |t|
      t.belongs_to :user
      t.belongs_to :deck
      t.timestamps
    end
  end

end

