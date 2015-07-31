class ProfessionalExperience < ActiveRecord::Base
  validates :start_date, presence: true
  validates :company, presence: true, length: { maximum: 300, too_long: "%{count} charactères autorisés"}
  validates :location_fr, length: { maximum: 300, too_long: "%{count} charactères autorisés"}
  validates :location_en, length: { maximum: 300, too_long: "%{count} charactères autorisés"}
  validates :description_fr, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :description_en, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}

end
