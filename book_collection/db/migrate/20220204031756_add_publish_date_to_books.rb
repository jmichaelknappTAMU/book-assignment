class AddPublishDateToBooks < ActiveRecord::Migration[6.1]
  def change
		add_column(:books, :publishDate, :date)
  end
end
