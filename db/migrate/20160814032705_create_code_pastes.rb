class CreateCodePastes < ActiveRecord::Migration[5.0]
  def change
    create_table :code_pastes do |t|
      t.string :token
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.text :content
      t.boolean :private

      t.timestamps
    end
    add_index :code_pastes, :token, unique: true
  end
end
