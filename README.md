# README

Ruby version: ruby 3.2.2
Rails version: Rails 7.0.4.3
I used rbenv to download and run my rails environment.

Creating/Initializing the database:

To set up Course db:
1. rails generate resource courses (migration file: db/migrate/20230516021336_create_courses.rb)
2. rails db:migrate
3. rails console
4. Course.load_from_file

To set up Grade db:
1. rails generate resource grades (migration file: db/migrate/20230516015120_create_grades.rb)
2. rails db:migrate 
3. rails console
4. Grade.load_from_file
5. quit
6. rails generate migration rename_id_to_sid (Migration file: db/migrate/20230516020502_rename_id_to_sid.rb)
7. rails db:migrate
8. rails generate migration add_cid_to_grades (migration file: db/migrate/20230516020625_add_cid_to_grades.rb)
9. rails db:migrate
10. rails generate migration remove_subject_and_catalog_from_grades (migration file: db/migrate/20230516020836_remove_subject_and_catalog_from_grades.rb)

Running the website:
- running 'rails server' in the commandline starts the website running on a localhost server
- You can navigate the pages using the links


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
