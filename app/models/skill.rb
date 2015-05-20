class Skill < ActiveRecord::Base
  validates :description_fr, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :description_en, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :rank, presence: true, :inclusion => { :in => 1..5}
end
