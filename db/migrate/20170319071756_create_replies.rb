class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.integer :post_id
      t.text :response
      t.string :author

      t.timestamps
    end
  end
end
