class CreateWikiCollaborations < ActiveRecord::Migration
  def change
    create_table :wiki_collaborations do |t|
      t.references :wiki, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
