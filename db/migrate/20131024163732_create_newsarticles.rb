class CreateNewsarticles < ActiveRecord::Migration
  def change
    create_table :newsarticles do |t|
      t.string :title
      t.text :body
      t.integer :team_id

      t.timestamps
    end
  end
end
