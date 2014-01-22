# Blog 3 Pagination

## Learning Competencies

## Summary

 We're going to learn about pagination.  Sometimes when there are large number of records to display, we'd rather have a user page through the records (restricting the number displayed per page) than have them scroll forever and ever.

## Learning Goals

- Understanding pagination and its effects in all tiers of the web application.
- How to incorporate third-party gems into a web application using bundler.

## Objectives

### Install the will_paginate gem

We're going to use the [will_paginate](https://github.com/mislav/will_paginate/wiki/Installation) gem.  Edit your `Gemfile` and add the line

```ruby
gem 'will_paginate', '~> 3.0.0'
```

Run `bundle install` to make sure the gem is installed.  If something goes wrong find a staff member.

### Paginate Posts

Every page that displays a list of posts should be paginated: the list of all posts, the list of posts for a given tag, and the list of posts by a given author.

The will_paginate gem adds methods to your `ActiveRecord` classes to support pagination.  Read through the will_paginate documentation to figure out how it works.

Additionally, it comes with a view helper to display a nice list of page links for any paginated ActiveRecord object.  Use it!

## Releases
### Release 0

## Optimize Your Learning

## Resources
