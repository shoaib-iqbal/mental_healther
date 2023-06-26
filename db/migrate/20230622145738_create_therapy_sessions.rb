class CreateTherapySessions < ActiveRecord::Migration[7.0]
  def change
    create_table :therapy_sessions do |t|
      t.references :therapist, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :booked, default: false

      t.timestamps
    end
  end
end
