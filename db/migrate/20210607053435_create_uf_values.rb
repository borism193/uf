class CreateUfValues < ActiveRecord::Migration[6.1]
  def change
    create_table :uf_values do |t|
      t.float :value
      t.date :date

      t.timestamps
    end
  end
end
