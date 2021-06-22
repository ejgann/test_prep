<h1 align="center">:books: Test Prep Tracker :pencil2:</h1>
<p align="center">An app to help users log and track their progress in preparing for graduate or professional exams.<br>
Check out the <a href="https://vimeo.com/509897295)">demo</a>.
</p>

## Features
There are four models on which this app is based: Users, Tests, Activities, and Practices. Tests belong_to Users; Users have many Activities through Practices; and Activities have many Users through Practices.

## Built With:
* Ruby v2.6.1
* Rails v6.0.3 - MVC Web Framework
* PostgreSQL v0.18, 0.20 - Database
* OmniAuth Google
* Bootstrap 4.0.0

## Features
![gif title](https://github.com/ejgann/test_prep/find/master?raw=true)

* Sign in/Sign up option with email or Google account authentication
* User can view and add to a list of graduate/professional tests for which they are preparing; includes search feature for finding specific tests
* User can view suggested test prep activities that other users have added, including descriptions and suggested time requirements, or add their own test prep activity
* Log practice sessions of study activities
* Track progress and performance until the test day
