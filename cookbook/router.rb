class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    while true
      action = ask_for_actions
      dispatch_action_to_controller(action)
    end
  end

  private
  def ask_for_actions
    puts "What do you want to do?"
    puts "-----------------------"
    puts "1. Display all the tasks"
    puts "2. Create a new task"
    puts "3. Mark a task as done"
    puts "4. Remove a task"
    return gets.chomp.to_i
  end

  def dispatch_action_to_controller(action)
    case action
    when 1
      @controller.list_all
    when 2
      @controller.create
    when 3
      @controller.update
    when 4
      @controller.destroy
    else
      puts "Invalid option, choose again."
    end
  end
end
