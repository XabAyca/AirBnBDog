class AddRelation < ActiveRecord::Migration[5.2]
  def change
    add_reference :strolls, :dogsitter, foreign_key: true
    add_reference :dogs, :stroll, foreign_key: true
  end
end
