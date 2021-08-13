class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def up
    change_column_default :users, :firstName, true
    change_column_default :users, :lastName, true
  end
  
  def down
    change_column_default :users, :firstName, false
    change_column_default :users, :lastName, false
  end
end