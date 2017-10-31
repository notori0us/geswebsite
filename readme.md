#notori0us/geswebsite
## A simple application to track student involvement

The [Green Engineering Scholars at Ohio
State](http://honors-scholars.osu.edu/scholars/programs/green-engineering) have
requirements for involvement such as attending certain numbers of events per
year.

This code lives at http://osugreenscholars.org and is deployed using Amazon Web
Services Elastic Beanstalk.

## How to contribute
Are you a Computer Science Major? Do you just like knowing how things work?
Want to gain some community service hours? Why not add a feature or make a
change to the GES Logging website!

I originally wrote this in my spare time at work, so I'm always looking for
help adding features. Check out the issues tab of this repository to see
anything that I'm looking for, or go out on a limb and propose something :)

### Get ruby working
[ruby](https://www.ruby-lang.org/en/documentation/installation/) is a
programming language that tries to get out of your way and let you get work
done. It is however, a little confusing to set up. It helps to have linux or a
mac.

If you already have ruby installed, great, otherwise do this:
1. [Install chruby](https://github.com/postmodern/chruby#install) - this is a
   *ruby version manager* which is slang for "making it easy to keep track of
   your ruby versions".

2. [Install ruby-install](https://github.com/postmodern/ruby-install#install) -
   this is a tool that makes it easy to install different versions of ruby.

3. Install ruby-2.4 - `ruby-install ruby-2.4`

4. Install the bundler - `chruby ruby-2.4 && gem install bundler`

Finally, check out the [Rails getting started
guide](http://guides.rubyonrails.org/getting_started.html) for more information
and help about Ruby on Rails. Honestly, peeking around the existing code should
give you *some* idea of what's happening. Hopefully.

### Fork this repository
1. Github documentation for forking [here](https://help.github.com/articles/fork-a-repo/)
2. Clone the repository
```
$ git clone https://github.com/<your_username>/geswebsite
```
3. `bundle install`
4. Make a change! Test with `rails server`
5. [Make a pull request](https://help.github.com/articles/using-pull-requests/)

### Need help?
Feel free to email me if you're stuck or really are interested in help!
