class Schedule < ApplicationRecord
  validates :title, presence: true, length: {in:1..20}
	validates :startedDay, presence: true
	validates :endedDay, presence: true
	validates :description, length: {maximum: 500}

	validate :endedDayMustBeAfterToday
	def endedDayMustBeAfterToday
		if endedDay.present? && endedDay < Date.today then
			errors.add(:endedDay, "終了日は今日以降の日付で選択してください")
		end
	end
	validate :endedDayMustBeAfterStarteddDay
	def endedDayMustBeAfterStarteddDay
		if endedDay.present? && startedDay.present? && endedDay < startedDay then
			errors.add(:endedDay, "終了日は開始日以降の日付を選択してください")
		end
	end
end
