# Todo List
-----------

This program was created using Justin Herrick's <a href ="https://github.com/jah2488/todo-csv">todo list program</a> as a starting point.

The model skeleton was used as the <a href="https://github.com/tiy-austin-ror-may2015/model-skeleton">template file</a> layout also taken from Justin Herrick.

## Installation

* Fork this repo
* Clone this repo
* Run `bundle install` to install `active_record` on the terminal
* Run the `todo_list.rb` file to run the program


## Rundown

```
.
├── Gemfile             # Details which gems are required by the project
├── README.md           # This file
├── Rakefile            # Defines `rake generate:migration` and `db:migrate`
├── config
│   └── database.yml    # Defines the database config (e.g. name of file)
├── console.rb          # `ruby console.rb` starts `pry` with models loaded
├── db
│   ├── dev.sqlite3     # Default location of the database file
│   ├── migrate         # Folder containing generated migrations
│   └── setup.rb        # `require`ing this file sets up the db connection
└── lib                 # Your ruby code (models, etc.) should go here
    └── all.rb          # Require this file to auto-require _all_ `.rb` files in `lib`
```
