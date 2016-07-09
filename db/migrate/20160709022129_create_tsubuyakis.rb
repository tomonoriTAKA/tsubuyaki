class CreateTsubuyakis < ActiveRecord::Migration
  def change
    create_table :tsubuyakis do |t|
      t.string :tweet
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
