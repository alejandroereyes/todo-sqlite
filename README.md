# Todo List

This program creates a todo list. It will display your todos and show whether they have been completed or are unfinished. The user can select to add a new todo, mark a todo as completed, delete and todo, or edit a todo.

Your todos are stored in a SQLite database. The ActiveRecord gem was used to generate the the database via migrations and allows for access to read and write to the database.


## Installation

* Fork this repo
* Clone this repo
* Run `bundle install` on the terminal to install `active_record` gem from any directory
* Run the `todo_list.rb` file to run the program found at `todo-sqlite/lib/todo_list.rb`


## Credits

This program was created using Justin Herrick's <a href ="https://github.com/jah2488/todo-csv">todo list program</a> as a starting point.

The model skeleton was used as the <a href="https://github.com/tiy-austin-ror-may2015/model-skeleton">template file</a> layout also taken from Justin Herrick.
