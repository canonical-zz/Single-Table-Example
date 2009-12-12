class CreatePostings < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|

      # if this thing is a LinkPosting, we use the URL
      t.string :url

      # if this thing is a LiteralPosting (text/embeded player) we use literal
      t.text :literal

      # if this thing is an AttachmentPosting we use attachment_fu
      t.column :parent_id,  :integer
      t.column :content_type, :string
      t.column :filename, :string
      t.column :thumbnail, :string
      t.column :size, :integer
      t.column :width, :integer
      t.column :height, :integer

      # common attributes
      t.timestamps
      t.column :title, :string
      t.column :author, :string

      # required for STI
      t.string :type
    end
  end

  def self.down
    drop_table :posts
  end
end
