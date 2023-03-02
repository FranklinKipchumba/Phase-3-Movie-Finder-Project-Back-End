class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movie do |t|
      t.text :title
      t.date :year
      t.text :description
      t.text :category
      t.numeric :price
    end
  end
end
