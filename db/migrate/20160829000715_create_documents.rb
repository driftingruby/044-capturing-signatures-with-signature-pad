class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.binary :signature
      t.datetime :signed_on

      t.timestamps
    end
    add_index :documents, :user_id
  end
end
