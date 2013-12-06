class FreePeriod < ActiveRecord::Base
  belongs_to :user
  validate :dates_correct

  def dates_correct
    if start_date > end_date
      errors.add(:start_date, 'must be greater than end date')
    end
  end
end
