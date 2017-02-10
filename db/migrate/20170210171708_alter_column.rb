class AlterColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column(:products, :cost, :string)
    add_column(:products, :cost, :decimal)
  end
end
