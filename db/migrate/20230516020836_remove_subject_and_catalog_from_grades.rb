class RemoveSubjectAndCatalogFromGrades < ActiveRecord::Migration[7.0]
  def change
    remove_column :grades, :subject, :text
    remove_column :grades, :catalog, :text
  end
end
