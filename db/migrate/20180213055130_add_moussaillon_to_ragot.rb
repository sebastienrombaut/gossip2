class AddMoussaillonToRagot < ActiveRecord::Migration[5.1]
  def change
    add_reference :ragots, :moussaillon, foreign_key: true
  end
end
