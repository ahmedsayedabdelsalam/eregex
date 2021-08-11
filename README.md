# ERegex

Ruby version of this awesome package https://github.com/hotmeteor/regex
to provide easy API to deal with Regex.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eregex'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install eregex

## Usage

ERegex comes with a set of common regex patterns that are ready to use. These patterns can be used to either **replace** or **match** against values. Every pattern is both case-insensitive and able to interpret unicode characters, and should support all languages.

Additionally, beyond the methods below both the underlying `match` and `replace` methods are exposed to pass in custom patterns.

### Match

Match methods return true or false depending on if the subject value contains anything but the expected pattern.

You may optional allow whitespace by passing `true` as a second parameter.

#### Methods

```ruby
ERegex.alpha?(subject, allow_whitespace: false)
``` 
Checks if the value contains anything but letters.

***

```ruby
ERegex.alphanumeric?(subject, allow_whitespace: false)
``` 
Checks if the value contains anything but letters and numbers.

***

```ruby
ERegex.alphadash?(subject, allow_whitespace: false)
``` 
Checks if the value contains anything but letters, numbers, and `.-_`.

***

```ruby
ERegex.digits?(subject, allow_whitespace: false)
``` 
Checks if the value contains anything but integers.

***

```ruby
ERegex.numeric?(subject)
``` 
Checks if the value contains anything but numeric values, including decimals and negative numbers. Does not allow for whitespace.


### Replace

Replace methods replace anything in the subject value that doesn't match the pattern with the provided replacement.

The default replacement is nothing: it just removes the character.

#### Methods
```ruby
ERegex.alpha(subject, replace = "")
``` 
Replaces all characters in the subject except letters.

***

```ruby
ERegex.alphanumeric(subject, replace = "")
``` 
Replaces all characters in the subject except letters and numbers.

***

```ruby
ERegex.alphadash(subject, replace = "")
``` 
Replaces all characters in the subject except letters, numbers, and `.-_`.

***

```ruby
ERegex.digits(subject, replace = "")
``` 
Replaces all characters in the subject except integers.

***

```ruby
ERegex.numeric(subject, replace = "")
``` 
Replaces all characters in the subject except numeric values, including decimals and negative numbers.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ahmedsayedabdelsalam/eregex. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/ahmedsayedabdelsalam/eregex/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ERegex project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ahmedsayedabdelsalam/eregex/blob/master/CODE_OF_CONDUCT.md).
