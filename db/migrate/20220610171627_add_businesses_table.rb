class AddBusinessesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :location, :string
      t.column :owner, :string
    end
  end
end
