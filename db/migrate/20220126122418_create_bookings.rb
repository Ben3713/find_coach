class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :professionel, null: false, foreign_key: true
      t.datetime :date_resa
      t.integer :total_resa

      t.timestamps
    end
  end
end
