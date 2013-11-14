class TasksController < InheritedResources::Base
  def permitted_params
    params.permit(task: [:person_responsible_id, :work_category_id, :start_date, :end_date, :description, :hours_planned,
                         :hours_real, :cost, :status_id, :project_id])
    end
end
