class RenameAutherToAuthorInBooks < ActiveRecord::Migration[7.2]
  def change
    rename_column :books, :auther, :author
  end
end
