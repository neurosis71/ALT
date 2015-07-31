class DateExperience < ActiveRecord::Migration
  def change
    rename_column :professional_experiences, :date, :start_date
    add_column :professional_experiences, :end_date, :date
  end
end
