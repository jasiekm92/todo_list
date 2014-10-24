class ForeignKeyForUser < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.string :users_id
    end
  end
end
