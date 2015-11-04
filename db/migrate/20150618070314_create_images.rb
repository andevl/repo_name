class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.text :content
    	t.string :picture
      t.timestamps null: false
    end
  end
end
