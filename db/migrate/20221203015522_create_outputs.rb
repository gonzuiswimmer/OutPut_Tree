class CreateOutputs < ActiveRecord::Migration[6.0]
  def change
    create_table :outputs do |t|
      t.string     :title,      null: false
      t.text       :detail,     null: false
      t.datetime   :post_date,  null: false
      t.integer    :genre_id,   null: false
      t.integer    :user_id,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
