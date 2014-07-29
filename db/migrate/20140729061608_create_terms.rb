class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string  :phrase
      t.text    :definition

      t.timestamps
    end
  end
end
