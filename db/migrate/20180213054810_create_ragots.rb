class CreateRagots < ActiveRecord::Migration[5.1]
  def change
    create_table :ragots do |t|
      t.text :content

      t.timestamps
    end
  end
end
