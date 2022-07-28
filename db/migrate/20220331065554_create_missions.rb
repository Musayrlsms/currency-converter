class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :currency1
      t.string :currency2
      t.string :rate

      t.timestamps
    end
  end
end
