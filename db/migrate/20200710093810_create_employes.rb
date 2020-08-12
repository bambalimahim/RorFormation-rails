class CreateEmployes < ActiveRecord::Migration[6.0]
  def change
    create_table :employes do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :account, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
