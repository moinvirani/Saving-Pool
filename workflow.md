WORKFLOW DONE:

<!-- Projects -->

CONTROLLERS:

rails g controller projects index new show edit --no-test-framework

MODEL:
rails g model Project 
name:string 
goal:integer
end_date:datetime 
category_id:integer
user_id:integer
description: text


<!-- Users  -->

CONTROLLERS for:
- users 
- user_sessions
- oauths (generated with sorcery)


MODELS:
- user
- authentication (sorcery)

<!-- Pledge -->

CONTROLLERS:
rails g controller pledges new create --no-test-framework

MODELS:
rails g model Pledge
amount:integer
user:references
project:references

<!-- Categories -->

rails g model Category name:string


<!-- Comments -->



