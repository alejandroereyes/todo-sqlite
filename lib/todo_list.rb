require_relative '../db/setup'
require_relative 'todo'

class TodoList

  def start
    loop do
      @todos = Todo.all

      system('clear')

      view_todos

      puts
      puts "What would you like to do?"
      puts "--------------------------"
      puts "1) Exit 2) Add Todo 3) Mark Todo As Complete"
      puts "        4) Delete Todo 5) Edit Todo"
      print " > "
      action = gets.chomp.to_i
      case action
      when 1 then exit
      when 2 then add_todo
      when 3 then mark_todo
      when 4 then delete_todo
      when 5 then edit_todo
      else
        puts "\a"
        puts "Not a valid choice"
      end
    end
  end

  def add_todo
    print "Enter your new todo : "
    Todo.create(entry: get_input)
  end

  def mark_todo
    print "Which todo to mark as done? :"
    Todo.where(id: get_input.to_i).update_all(completed: true)
  end

  def view_todos
    puts " ------ TODO LIST -------"
    puts " | Completed to Date: #{total_finished} |"
    puts " ------------------------"
    @todos.each do |item|
      puts "#{item.id})  #{item.entry} -- #{item.completed ? "Completed" : "Unfinished"}"
    end
  end

  def edit_todo
    print "Which todo to edit? : "
    todo_to_edit = get_input.to_i
    puts
    print "Enter your entry : "
    Todo.where(id: todo_to_edit).update_all(entry: get_input)
  end

  def delete_todo
    print "Which todo to delete? : "
    Todo.delete(get_input.to_i)
  end

  def total_finished
    Todo.count - Todo.where(completed: false).count
  end

  private
  def get_input
    gets.chomp
  end
end

TodoList.new.start
