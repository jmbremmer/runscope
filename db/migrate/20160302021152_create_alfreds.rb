class CreateAlfreds < ActiveRecord::Migration
  def change
    create_table :alfreds do |t|
      t.string :alfred

      t.timestamps
    end
  end
end
