class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :user, foreign_key: true
      t.references :board, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
