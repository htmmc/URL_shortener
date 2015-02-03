class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
	    t.integer :short_id
	    t.integer :visits
	    t.string :url
	    t.timestamps null: false
    end
  end
end
