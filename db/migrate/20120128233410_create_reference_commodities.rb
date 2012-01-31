class CreateReferenceCommodities < ActiveRecord::Migration
  def change
    create_table :reference_commodities do |t|
      t.string :type
      t.string :commodity
      t.string :language

      t.timestamps
    end
  end
end
