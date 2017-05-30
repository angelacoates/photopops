class ChangeOptInDefaultToTrue < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :opt_in, from: false, to: true
  end
end
