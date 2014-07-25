class AddCommentColumnToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :total_comment, :integer,:default => 0
  end
end
