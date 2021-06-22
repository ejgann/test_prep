# Test Prep Tracker
An app to help users log and track their progress in preparing for graduate or professional exams.

[Demo](https://vimeo.com/509897295)






## Architecture and models
There are four models on which this app is based: Users, Tests, Activities, and Practices. Tests belong_to Users; Users have many Activities through Practices; and Activities have many Users through Practices.

## Technologies
Test Prep Tracker is created with:

* Ruby version: 2.6.1
* Rails version: 6.0.3
* PostgreSQL version: 0.18, 0.20
* OmniAuth Google
* Bootstrap 4.0.0

## Features
* Maintain a list of graduate/professional tests for which you are preparing
* Log practice sessions of pre-set study activities or add your own activity
* Track progress and performance until the test day

## Project Status
This project is a work in progress and will continue to be improved over time. Currently it is in a functional state for purposes of submitting for a school project.
