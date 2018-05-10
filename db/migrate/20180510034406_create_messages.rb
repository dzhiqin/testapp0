class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :message
      t.string :username
      t.timestamps
    end
  end
end
