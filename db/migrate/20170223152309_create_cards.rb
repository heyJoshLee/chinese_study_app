class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.timestamps
      t.string :english, :chinese, :pinyin, :sentence, :slug
      t.text :notes
    end
  end
end
