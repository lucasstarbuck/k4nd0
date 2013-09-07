class CreateTaskblocks < ActiveRecord::Migration
  def change
    create_table :taskblocks do |t|
      t.string :description

      t.timestamps
    end
  end
end
