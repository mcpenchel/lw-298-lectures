require_relative "task_view"
require_relative "task"

class TasksController

  def initialize(task_repository)
    @repo = task_repository
    @view = TaskView.new
  end

  def list_all
    display_tasks
  end

  def create
    # Ask for description
    description = @view.ask_for_description
    # Create new task
    task = Task.new(description)
    # Save it in the repository
    @repo.add_task(task)
  end

  def update
    # Display all the tasks with their indexes
    display_tasks
    # Ask which task index
    task_index = @view.ask_for_task_index
    # Find the task in the repo with that index
    task = @repo.find(task_index)
    # Mark it as done!
    task.mark_as_done!
  end

  def destroy
    # Display all the tasks with their indexes
    display_tasks
    # Ask which task index
    task_index = @view.ask_for_task_index
    # Send the index to the repo so it can delete it
    @repo.remove_task(task_index)
  end

  private
  def display_tasks
    @view.display_tasks(@repo.all)
  end

end

# CRUD
# CREATES
# READS
# UPDATES
# DESTROY

# CREATE A TASK AND ADD IT TO THE REPOSITORY
# LISTING ALL THE TASKS
# MARK A TASK AS DONE
# DELETE THE TASK FROM THE REPOSITORY
