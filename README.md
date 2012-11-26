# Font Awesome for Rails asset pipeline with SASS and SCSS

The iconic font designed for use with _Twitter Bootstrap_

The full suite of pictographic icons, examples, and documentation can be found at:
[Font-Awesome](http://gregoryloucas.github.com/Font-Awesome-More/)

## Install

`gem 'font_awesome-sass-rails'`

Then `bundle` it!

## CSS Configuration

In your CSS manifest file, fx `application.css`

```css
 *= require font-awesome
```

For IE7

```css
 *= require font-awesome-ie
```

The assets contains the `font-awesome` stylesheet in: LESS, SASS, SCSS and CSS.
The fonts are available in `assets/fonts`. To load the font in a particular format, specify one of the following:

```css
 *= require font-awesome-sass
 *= require font-awesome-less
 *= require font-awesome-scss
```

## View helpers

```ruby
awesome_icon name, *args, &block
```

Usage examples:

```ruby
awesome_icon(:ok)

# => <i class="icon-ok"></i>

awesome_icon(:ok, size: :large)

# => <i class="icon-ok icon-large"></i>

awesome_icon(:ok, 'Okay :)')

# => <i class="icon-ok"></i>Okay :)

awesome_icon(:ok) { 'Okay :)'}

# => "<i class="icon-ok"></i>Okay :)"

awesome_icon(:ok, style: 'font-size: 10px', class: 'topleft')

# => <i class="icon-ok topleft" style="font-size: 10px"></i>
```

Awesome button!

```ruby
awesome_button(:ok, size: 'large', type: 'primary', href: 'google.com') {'Okay :)'}

# => <a class="btn  btn-large btn-primary" href="google.com"><i class="icon-ok icon-large"></i>Okay :)</a>
```

## Composite icons using overlay effects

Use something like the following CSS:

```css
.decorator.top {
  font-size: 10px; 
  position: relative; 
  left: -0.6em; 
  top: -0.6em;
  color: orange;
}
```

Then have the primary icon, followed by the icon to use for the overlay.

```ruby
= awesome_icon(:group)
= awesome_icon(:plus, class:'decorator tl')
```

The second icon (plus) will be pushed half a character back (left) and up, to create a nice overlay effect - an "Add group" icon.

## Troubleshooting

If you get an error, saying that the asset (font-awesome) couldn't be found, try moving the gem statement outside any group.

See http://stackoverflow.com/questions/9047478/rails-app-with-twitter-bootstrap-works-in-development-but-not-in-production and http://edgeguides.rubyonrails.org/asset_pipeline.html

For hyphenated icon names, surround the icon name with quotes:

```ruby
awesome_icon(:'bookmark-empty').should == "<i class=\"icon-bookmark-empty\"></i>"
```

## Version

Font Awesome 2.0 is currently included. Enjoy :)

## Contact
- Email: me@gregoryloucas.com
- Twitter: http://twitter.com/gregoryLpaul

## License

Version 2.0 of the Font Awesome font, CSS, and LESS files are licensed under CC BY 3.0:
http://creativecommons.org/licenses/by/3.0/

A mention of 'Font Awesome - http://fortawesome.github.com/Font-Awesome'
in human-readable source code is considered acceptable attribution (most common on the
web). If human readable source code is not available to the end user, a mention in an 'About' or 'Credits' screen is considered acceptable (most common in desktop or mobile software).

## Original Author
- Email: dave@davegandy.com
- Twitter: http://twitter.com/fortaweso_me
- Work: Lead Product Designer @ http://kyru.us

## Credits
Special thanks to [@Keyamoon](http://twitter.com/keyamoon/) for icon designs from the IcoMoon app, which provided the social icons.

And obviously a big thank you to the original author of this amazing font library, Dave Gandy.

## Contributing to font-awesome-rails
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Kristian Mandrup. See LICENSE.txt for
further details.

