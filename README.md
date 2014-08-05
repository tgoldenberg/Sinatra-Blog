# Blog 3 Pagination

## Learning Competencies

* Implement a new feature and make changes across the MVC architecture to support the feature
* Incorporate third-party gems into a web application using bundler

## Summary

We're going to learn about pagination.  Sometimes when there are large number
of records to display, we'd rather have a user page through the records
(restricting the number displayed per page) than have them scroll forever and
ever.

Start by copying your solution to [Blog 2](../../../blog-2-multi-author-challenge) into the `source` directory.

## Releases

### Release 0: Install the will\_paginate gem

We're going to use the [will\_paginate][will_paginate] gem.  Edit your
`Gemfile` and add the line

```ruby
gem 'will_paginate', '~> 3.0.0'
```

Run `bundle install` to make sure the gem is installed.  If something goes
wrong find a staff member.

### Release 1 : Paginate Entries

Every page that displays a list of entries should be paginated: the list of all
entries, the list of entries for a given tag, and the list of entries by a given
author.

The will\_paginate gem adds methods to your `ActiveRecord` classes to support
pagination.  Read through the will\_paginate documentation to figure out how it
works.

Additionally, it comes with a view helper to display a nice list of page links
for any paginated ActiveRecord object.  Use it!

## Resources

* [will\_paginate gem][will_paginate]

[will_paginate]: https://github.com/mislav/will_paginate/wiki/Installation
