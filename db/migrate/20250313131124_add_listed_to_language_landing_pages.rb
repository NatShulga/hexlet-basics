class AddListedToLanguageLandingPages < ActiveRecord::Migration[8.0]
  def change
    add_column :language_landing_pages, :listed, :boolean
  end
end
