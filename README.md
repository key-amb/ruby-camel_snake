# camel\_snake

This package provides a Mix-in module which extends String class and adds features
to convert itself into _CamelCase_ or *snake\_case*.

## Usage

```ruby
require 'camel_snake'

"FooBar".extend(CamelSnake).to_snake  #=> "foo_bar"
"bar_baz".extend(CamelSnake).to_camel #=> "BarBaz"

# Or you can do bellow
String.include CamelSnake

"FooBar".to_snake  #=> "foo_bar"
"bar_baz".to_camel #=> "BarBaz"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'camel_snake'
```

And then run `bundle` command on your terminal.

Or install it yourself as:

```
$ gem install camel_snake
```

## Motivation

I know there are a lot of packages which provide similar features including
ActiveSupport in Rails.  
But I want a minimul package which gives only these two conversion functions
out of Rails.

With [refinements](http://ruby-doc.org/core-2.3.0/doc/syntax/refinements_rdoc.html),
Ruby's recent feature, we can safely extend classes.  
Jan Lelis's [sugar_refinery](https://rubygems.org/gems/sugar_refinery) uses this
feature. But it is not usable in older Ruby versions.

This module is simple and hopefully usable in many Ruby versions.
And it meets my needs.

## See Also

- [sugar_refinery](https://rubygems.org/gems/sugar_refinery)
- [string-cases](https://rubygems.org/gems/string-cases)

## Contribution

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new [Pull Request](../../pull/new/master)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

Copyright (c) 2016 YASUTAKE Kiyoshi
