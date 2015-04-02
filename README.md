# Tuturu

> Tuturuuuu~♪ <br/>
> -- Mayuri Shiina / Steins;Gate

Cast everything ~~to true~~ **tuturu**!

## Requirements
+ Ruby 1.9.3+

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tuturu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tuturu

## Usage

```ruby
true.tuturu  #=> true
false.tuturu #=> true
nil.tuturu   #=> true
'Mayushi'.tuturu  #=> true
Object.new.tuturu #=> true

true.to_true  #=> true
false.to_true #=> true
nil.to_true   #=> true
'Mayushi'.to_true  #=> true
Object.new.to_true #=> true

Tuturu(true)  #=> true
Tuturu(false) #=> true
Tuturu(nil)   #=> true
Tuturu('Mayushi')  #=> true
Tuturu(Object.new) #=> true
```

## Credits

This gem is heavily inspired by [ToNil](https://github.com/mrThe/to_nil).

## Contributing

1. Fork it ( https://github.com/quanon/tuturu )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
6. El Psy Congroo...
