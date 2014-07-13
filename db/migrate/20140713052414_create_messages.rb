class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :status
      t.references :user

      t.timestamps
    end
  end
end
