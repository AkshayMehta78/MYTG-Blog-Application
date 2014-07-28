class ChangeColumnSize < ActiveRecord::Migration
  def change
  	 change_column :Articles, :body, :text , :limit => nil
  end
end
