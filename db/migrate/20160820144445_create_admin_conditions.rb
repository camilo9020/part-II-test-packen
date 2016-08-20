class CreateAdminConditions < ActiveRecord::Migration
  def change
  	enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :admin_conditions do |t|
      t.string :type
      t.hstore :data
      t.timestamps null: false
    end
  end
end
