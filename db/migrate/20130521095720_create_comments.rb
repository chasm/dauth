class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :article
      t.text :content
      t.string :author_name
      t.string :site_url

      t.timestamps
    end
    add_index :comments, :article_id
  end
end
