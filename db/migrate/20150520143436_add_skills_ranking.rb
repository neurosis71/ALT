class AddSkillsRanking < ActiveRecord::Migration
  def change
    add_column :skills, :rank, :integer, :default => 1
  end
end
