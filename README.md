# Spinners

[![Bower version](https://badge.fury.io/bo/spinners.svg)](http://badge.fury.io/bo/spinners) [![Gem Version](https://badge.fury.io/rb/spinners.svg)](http://badge.fury.io/rb/spinners)




A Sass mixin to generate pure CSS3 loading/busy indicators.
Uses a single rotating element and a partial border.
Fully customizable.
Works with plain Sass or [Compass](http://compass-style.org).

***[Spinners Demo & Documentation](http://franzheidl.github.io/spinners/)***

*** New with v1.2.0***

* Spinners can be installed via NPM, including support for [eyeglass](https://github.com/sass-eyeglass/eyeglass)

* eyeglass support


***New with v1.1.0***

* Spinners does not require Compass anymore (but will be installed as a Compass extension if you already have Compass installed)

* Spinners can now have a background

##Install

### Download
To use Spinners straightaway without any package manager, the only file you'll need is `stylesheets/_spinners.scss`. Place this in the appropriate `sass` folder of your project, import it into your main .scss file or -module you deem fit, and you're good to go:

    @import "spinners";


### Bower
To install in your current project using bower run:

    $ bower install --save-dev spinners
    
### NPM
When installed via NPM, spinners can be used with [eyeglass](https://github.com/sass-eyeglass/eyeglass). To install spinners with NPM run:

    $ npm install --save-dev spinners


### Ruby Gem / Compass Extension

To install the Compass extension as a Ruby Gem:

    $ gem install spinners
    
and require it in your `config.rb`:

    require 'spinners'
    
If you're using Grunt or Gulp with grunt-contrib-sass or grunt-contrib-compass without a `config.rb` file and have the Ruby Gem installed, you can add Spinners as a dependency to your configuration object:

With grunt-contrib-sass:
 
    sass: {
      [...]
      options: {
        require: 'spinners'
      }
    }


With grunt-contrib-compass:

    compass: {
      compile: {
        options: {
          [...]
          require: 'spinners'     
        }
      }
    }


With gulp:

      [...]
        .pipe(compass({
          [...]
          require: 'spinners'
        }))
      [...]

  


Spinners is also on [Sache](http://www.sache.in/).

##Usage

First, import Spinner into your main .scss file or -module (depending on your installation method the import path might need to be adjusted accordingly):

	@import "spinners";

Then declare a selector of your choice and call the mixin:

	.my-loading-spinner {
		@include spinner();
	}
	
In your html, you can use any markup element you want, a `div`, `span`, `i`, or what have you.


Spinners come set to `display: inline-block` and `vertical-align: middle` by default so you can put it inside buttons, alerts and the like and have it aligned. If the defaults don't work for you, declare your overrides ***after*** calling the mixin:

	.my-spinner {
    	@include spinner();
        vertical-align: top;
       	margin-right: .5em;
    }

### Customizing Spinners
Size, border-width, -style, -color, and the speed of the animation can be customized. 


#### Adjusting Size
By default, Spinners are set to be `1em` wide and high, so a spinner will size proportionally to its context. To customize its size, you may use any valid dimensional unit such as `px`, `em`, or `rem`:

	.my-spinner {
		@include spinner(1.25em);
	}

#### Adjusting border (width, style and thickness)	
For adjusting the border, you may use any valid shorthand css border declaration or individual `border-{property} {value}` (no colon!) pairs:

	.my-spinner {
		@include spinner(3px solid #ccc);
	}
	

	
	.my-spinner {
		@include spinner(border-width 3px, border-style solid);	
	}
	
#### Adjusting animation speed
To customize a spinner's animation speed, pass the number of seconds for one full rotation:

	.my-spinner {
		@include spinner(.6s);
	}
	
	
#### Adjusting the Background
The background, i.e. the perceived non-rotating part of a spinner, is set to be transparent by default. To adjust the background, pass a color as background argument:

    .my-spinner {
      @include spinner(background rgba(0, 0, 0, .2));
    }
	
All arguments are optional. When using mulitple customizations, pass your arguments comma-separated:

	.my-spinner {
		@include spinner(28px, 3px solid #555, .7s);
	}
	
In case of invalid arguments compilation will not fail, but Spinners will output a warning and use its defaults.




## Compatibility
Works in any modern browser and IE 10+.
Spinners does not come with a fallback for IE < 10, so if you need one, roll your own!





The MIT License (MIT)
---


Copyright (c) 2014 Franz Heidl

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
