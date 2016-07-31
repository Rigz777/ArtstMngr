class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.string :buyer
      t.string :contact_person
      t.string :phone
      t.string :email
      t.string :website
      t.string :date
      t.string :time_of_performance
      t.string :location
      t.string :performance_type
      t.string :performance_length
      t.string :other_type
      t.string :ticketed?
      t.string :ticket_price
      t.string :expected_attendance
      t.string :indoor_outdoor
      t.string :performance_price


      t.timestamps null: false
    end
  end
end
