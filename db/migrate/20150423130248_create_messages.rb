class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :author, :class_name => User, index: true
      t.references :recipient, :class_name => User, index: true
      t.datetime :dateTime
      t.string :msg_head
      t.text :msg_body
      t.text :checksum
      t.boolean :read

      t.timestamps
    end
  end
end
