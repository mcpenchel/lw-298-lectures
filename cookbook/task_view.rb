class TaskView

  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{done} #{index + 1}. #{task.description}"
    end
  end

  def ask_for_description
    puts "What do you need to do?"
    return gets.chomp
  end

  def ask_for_task_index
    puts "Which task are you talking about?"
    return gets.chomp.to_i - 1
  end

end
