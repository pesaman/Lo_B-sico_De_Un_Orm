class TasksView 
	#Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(tasks)
  i = 1
    tasks.each do |task|
      if task.status == true
      puts "#{i}. [x] #{task.name_task}"
      i +=1 
      else 
      puts "#{i}. [ ] #{task.name_task}"
      i +=1 
      end   
    end
  end  

  def create
  end

  def delete
  end

  def update
  end

	def error
	end
end
