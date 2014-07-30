class AddAdminIdToTerms < ActiveRecord::Migration
  def change
    add_column :terms, :admin_id, :integer
  end
end
