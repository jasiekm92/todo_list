class SomeOtherMigrationForeignKey < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.string :user_id
    end
  end
end
