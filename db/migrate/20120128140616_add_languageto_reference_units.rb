class AddLanguagetoReferenceUnits < ActiveRecord::Migration
  def change
    add_column :reference_units, :language, :string
  end

end