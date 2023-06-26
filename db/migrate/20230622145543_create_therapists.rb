class CreateTherapists < ActiveRecord::Migration[7.0]
  def change
    create_table :therapists do |t|
      t.string :name
      t.string :specialization

      t.timestamps
    end
  end
end
