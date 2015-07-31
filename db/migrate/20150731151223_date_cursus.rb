class DateCursus < ActiveRecord::Migration
  def change
    rename_column :cursus, :date, :start_date
    add_column :cursus, :end_date, :date
  end
end
