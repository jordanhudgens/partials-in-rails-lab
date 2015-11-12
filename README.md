# Objectives

You have your partial work cut out for you in this project. The code works, but the view code is very disorganized and needs to be completed refactored. The high level concepts you will work through will be:

* Organize duplicate view code into partials
* Use shared partials
* Integrate partials with collections
* Utilize local variables with partial calls
* Calling partials from views that belong to different controllers/models

# Partials in Rails

All of the Rspec and Capybara tests are currently passing, after you have cloned the application and set it up on your local machine you can run ```bundle exec rspec spec/features/```. This directory is where the Capybara tests are that specifically test the view code to ensure that the refactors you make do not change the flow of the application.

Below are the tasks to complete for this lab:

* Integrate a form partial for the new and edit ```post``` form pages.
* Create a partial for the navigation div currently in the ```application.html.erb``` file
* Use a partial to render the ```comment``` collection instead of having all of the code reside in the ```posts/show.html.erb``` file
* Use a partial so that alerts are called from the ```application.html.erb``` layout file instead of each page
* Integrate a form partial for the ```comment``` form, which currently is in the ```posts/show.html.erb``` file, use a local variable for this partial call
* Integrate a partial for the ```posts/index.html.erb``` page

## Resources

* [Reading](https://github.com/jordanhudgens/partials-in-rails)
* [Documentation](http://api.rubyonrails.org/classes/ActionView/PartialRenderer.html)

