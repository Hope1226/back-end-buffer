class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.belongs_to :user, null: false, index: true
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
