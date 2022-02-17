class CreateAuthors < ActiveRecord::Migration[6.1]
  enable_extension "uuid-ossp"
  def change
    create_table :authors, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.integer :birth_year
      t.boolean :is_alive

      t.timestamps
    end
  end
end
