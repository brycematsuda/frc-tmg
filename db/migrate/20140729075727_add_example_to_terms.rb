class AddExampleToTerms < ActiveRecord::Migration
  def change
    add_column :terms, :example, :string
  end
end
