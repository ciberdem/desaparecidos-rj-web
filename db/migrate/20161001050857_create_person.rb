class CreatePerson < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.float :height
      t.string :skin
      t.string :eyes
      t.string :sex
      t.string :father
      t.string :mother
      t.string :hair
      t.string :specificity
      t.string :photo
    end
  end
end
