class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.string :published_at

      t.timestamps
    end
  end
end
