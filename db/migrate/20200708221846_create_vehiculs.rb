class CreateVehiculs < ActiveRecord::Migration[6.0]
  def change
    create_table :vehiculs do |t|
      t.string :type
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
