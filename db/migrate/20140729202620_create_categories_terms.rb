class CreateCategoriesTerms < ActiveRecord::Migration
  def change
    create_table :categories_terms, :id => false do |t|
      t.references :term
      t.references :category
    end
  end

  def self.down
    drop_table :categories_terms
  end
end
