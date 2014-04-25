# Sinatra WebApp Bootstrap

## A WebApp

WebApp Boostrap supports:

* [Sinatra](http://www.sinatrarb.com/)
* [Shotgun](https://github.com/rtomayko/shotgun)
* [Haml](http://haml-lang.com/)
* [Sass](http://sass-lang.com/)
* [Twitter Boostrap 2.3.2](http://getbootstrap.com/2.3.2/)
* [Compass](https://github.com/chriseppstein/compass)
* [jQuery](http://jquery.com/)

## What is the purpose of WebApp Bootstrap?

I created WebApp Bootstrap in order to have a consistent starting point for my Sinatra WebApp projects. I like having Haml, Sass, CoffeeScript, Twitter Bootstrap 2.3.2, Compass and jQuery available to me in every project.

## First steps

    bundle install
    rake s

This rake command runs `bundle exec shotgun config.ru` behind the scenes for you and starts the app on Sinatra's default port 9393 and will now be able to view the application in your web browser at this URL [http://localhost:9393](http://localhost:9393).

## Helper Rake Tasks

    rake -T

    rake assets:clean                    # Alias of clear:all
    rake assets:clear                    # Alias of clear:all
    rake assets:clear:all                # Clear the CSS and JS
    rake assets:clear:css                # Clear the CSS
    rake assets:clear:js                 # Clear the JS
    rake assets:compile                  # Alias of compile:all:development
    rake assets:compile:all:development  # Compile all for Development
    rake assets:compile:all:production   # Compile all for Production
    rake assets:compile:css              # Compile CSS
    rake assets:compile:css:prod         # Compile CSS for production
    rake assets:compile:js               # Compile JS
    rake assets:production               # Alias of compile:all:production
    rake s                               # Run the app

## License

The MIT License

Copyright (c) 2014 Pablo Daniel Rodriguez

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
