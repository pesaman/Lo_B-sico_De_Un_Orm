class TasksController 
  
  def initialize(args)
    @view = TasksView.new

    menu(args)
  end
  def menu(args)
      task = args[1..args.length].join(" ")
      option = args[0]
      case option
      when "index" then index.length
      when "add" then add(task)
      when "delete" then delete(task)
      when "complete" then complete(task)
    end
  end

  def index
    tasks = Task.all
    @view.index(tasks)
  end

  def add(task)
    user = Task.create(name_task: task)
  end



 def delete(num_to_delete)
    task_list = Task.all
    task_list.each_with_index do |task, num|
    task.destroy if num + 1 == num_to_delete.to_i 
    end
 end

  def complete(num_to_delete)
    task_list = Task.all
    task_list.each_with_index do |task, num|
    task.update(status: true) if num + 1 == num_to_delete.to_i 
    end
  end
end

