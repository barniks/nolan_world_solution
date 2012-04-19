class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :commentable, :polymorphic => true
      # t.integer :commentable_id
      # t.string :commentable_type
      t.string :name
      t.string :email
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
