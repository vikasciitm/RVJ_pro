class CreateRvjs < ActiveRecord::Migration[7.0]
  def change
    create_table :rvjs do |t|
      t.string :title
      t.string :block

      t.timestamps
    end
  end
end
