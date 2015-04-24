class About < ActiveRecord::Base
  validates :about_fr, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :about_en, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :career_fr, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :career_en, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :interests_fr, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :interests_en, presence: true, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}


end
