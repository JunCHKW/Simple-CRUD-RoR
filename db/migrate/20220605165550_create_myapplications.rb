class CreateMyapplications < ActiveRecord::Migration[7.0]
  def change
    create_table :myapplications do |t|
      t.string :title
      t.string :note
      t.string :detail
      t.string :status

      t.timestamps
    end
  end
end
