class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def up
    change_column_null :users, :firstName, true
    change_column_null :users, :lastName, true
  end
  
  def down
    change_column_null :users, :firstName, false
    change_column_null :users, :lastName, false
  end
end