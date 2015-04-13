# Phase 2 Week 1 Self Assessment

## Summary

This challenge is designed to use everything you've learned so far at DBC. You should use it as a way to gauge how well you've absorbed the material so far.

In this challenge you will be building a blog-hosting site. Users can sign up for an account and they get a personal blog -- a lot like Tumblr.


### How to get the most out of this self assessment

- Do this challenge solo.
- It's ok to get help, but keep a detailed list of the questions you needed to ask for review later.
- If you get help, don't let someone else type for you.
- Don't copy old code. If you need to reference code you've written before, at least force yourself to type it out again.

If you hold yourself to these restrictions, you will form a better sense of what you know, how well you know it, and what you need to review.


## Releases

### Release 0: Authentication

#### Features

- the homepage should have a signup and a login button
- a user can sign up with an email address and password
- a user can log in with their email address and password
- a user can log out
- a user sees the error "bad email or password" with authentication fails
- you should not store plain text passwords anywhere ever
- the email and password cannot be blank
- the email must be a valid email address
- the user should see validation errors next to the email and password fields when they've made a mistake in trying to create their account

#### Requirements

- Your authentication routes do __not__ need to be RESTful
- You should be using BCrypt
- You should implement proper error handling

#### Tips

- use a password confirmation field with Bcrypt (it helps w/ validations)

### Release 1: Blog Posts

#### Features

- a user can create many blog posts
- a blog post has one author (a User)
- a blog post has a title, body, and authored_at date
- the title and body cannot be blank
- each user has a unique url where a __summary__ of all of their blog posts are displayed
- each blog post should have a unique url where it is __entirely__ displayed
- a user can delete a blog post
- a user can edit a blog post

#### Requirements

- Your blog post routes should be RESTful
- You should be using Sinatra partials to render blog posts consistently
- You should write at least 2 controller rspec tests and 3 model tests
- All four http verbs should be used
- All forms should render errors when validations fail

#### Extra Credit
- Try creating a custom validation in your Post model


### Release 2: Deploy!

Deploy your app to heroku.

### Extra Credit: Make it pretty

Come up with a simple aesthetic and use CSS to style your site. Get creative and try and impress everyone with your sick CSS skillz!

#### Requirements

- Your site should look clean, simple, and beautiful, but most of all usable and intuitive.
- Do not use Bootstrap or any other CSS frameworks
- Your site should have some sort of logo
- The homepage should describe what your site is/does

##### Tips

- Use normalize.css
- Never style using IDs
- Use clear and descriptive classnames
- Check out Google fonts
- Use images
- try to use `:before` and `:after` psuedo-selectors
- try to use `position: absolute`
- CSS transitions and CSS animations are easy and fun!

#### Extra Extra Credit
- Make a creative 404 page [like these](http://www.creativebloq.com/web-design/best-404-pages-812505)
- Create a cool graphic for your logo


## When you're done

Fill out your self assessment in Athena.  Reflect on your knowledge of the competencies.  What needs more work?  Make a list of weak competencies.

Which portfolio challenges can help you practice the competencies?  Which challenges from the week could be redone to fill in the gaps?  Make a plan for yourself to follow up.


## Checklist

#### It doesn't have to be 100% consistently implemented, but your app should include/use the following at least once:

- RESTful routes (except authentication)
- erb templates
- erb partials
- sinatra helpers
- bcrypt
- all 4 http verbs
- An example of error handling
- Proper use of MVC
- Very light logic in your views and controllers, most of your application logic should be in helpers and models
- proper formatting!!!
    + make sure your HTML is indented properly and readable
    + make sure your Ruby is indented properly and readable
- at least two rspec controller tests
- at least three rspec model tests
