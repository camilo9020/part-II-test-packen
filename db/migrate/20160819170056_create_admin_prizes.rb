class CreateAdminPrizes < ActiveRecord::Migration
  def change
    create_table :admin_prizes do |t|
      t.string :name
      t.text :description
      t.string :amount

      t.timestamps null: false
    end
  end
end
