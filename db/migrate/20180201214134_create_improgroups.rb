class CreateImprogroups < ActiveRecord::Migration[5.0]
  def change
    create_table :improgroups do |t|
      t.string :name_improgroups
      t.string :creation_year
      t.string :actors_improgroups
      t.string :image_improgroups

      t.timestamps
    end
  end
end
