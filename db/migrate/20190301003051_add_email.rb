class AddEmail < ActiveRecord::Migration[5.2]
  def change
  	add_column :emails, :lue, :boolean
  end
end
