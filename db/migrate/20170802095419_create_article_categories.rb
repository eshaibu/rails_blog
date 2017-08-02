class CreateArticleCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :article_categories do |t|
      t.references :article, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
    end
  end
end
