class AddPageIdColumnToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :page, foreign_key: true
  end
end
