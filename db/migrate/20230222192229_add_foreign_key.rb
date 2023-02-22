class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :accounts
  end
end
