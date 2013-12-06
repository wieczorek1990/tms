module CalendarHelper
  def current_date
    Date.parse(params[:first_day_of_week])
  end

  def free_periods(date)
    fp = FreePeriod.where('? >= start_date AND ? <= end_date', date, date)
    result = ''
    for free_period in fp
      result += link_to free_period.description, free_period_path(free_period)
      result += '<br/>'
    end
    result.html_safe
  end

  def tasks(date)
    t = Task.where('? >= start_date AND ? <= end_date', date, date)
    result = ''
    for task in t
      result += link_to task.description, task_path(task)
      result += '<br/>'
    end
    result.html_safe
  end
end
