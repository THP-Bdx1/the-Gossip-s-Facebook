class CreateCommentofcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :commentofcomments do |t|
      t.text :content
      t.string :commentor
      t.references :gossip, index: true
      t.timestamps
    end
  end
end
