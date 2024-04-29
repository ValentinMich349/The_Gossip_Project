class AddReferencesToPrivateMessages < ActiveRecord::Migration[7.1]
  def change
    add_reference :private_messages, :sender, null: false, foreign_key: { to_table: :users }
    create_join_table :private_messages, :users do |t|
      t.index [:private_message_id, :user_id]
      t.index [:user_id, :private_message_id]
    end
  end
end
