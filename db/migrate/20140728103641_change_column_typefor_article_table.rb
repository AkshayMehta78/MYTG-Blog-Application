class ChangeColumnTypeforArticleTable < ActiveRecord::Migration
  def up
  		 change_column :Articles, :body, :text , :limit => nil
  end
  def down
  		 change_column :Articles, :body, :string , :limit => nil
  end

end
