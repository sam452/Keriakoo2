class CreateReferenceUnits < ActiveRecord::Migration
  def change
    create_table :reference_units do |t|
      t.string :commodity
      t.string :wholesale_unit
      t.string :retail_unit
      t.string :receipt_unit

      t.timestamps
    end
  end
end
