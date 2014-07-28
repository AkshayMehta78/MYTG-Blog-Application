class ChangeColumnTypeofArticle < ActiveRecord::Migration
  def change
  	 change_column :Articles, :body, :text 
  end
end
