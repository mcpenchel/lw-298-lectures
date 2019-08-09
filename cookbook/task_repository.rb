class TaskRepository

  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def find(task_index)
    @tasks[task_index]
  end

  def add_task(new_task)
    @tasks << new_task
  end

  def remove_task(task_index)
    @tasks.delete_at(task_index)
  end

end
