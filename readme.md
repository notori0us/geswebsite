#notori0us/geswebsite
## A simple application to track student involvement

The [Green Engineering Scholars at Ohio
State](http://honors-scholars.osu.edu/scholars/programs/green-engineering) have
requirements for involvement such as attending certain numbers of events per
year.

This code lives at http://osugreenscholars.org and is deployed using Amazon Web
Services (Github -> Code Pipelines -> Elastic Beanstalk).

## How to contribute
Are you a Computer Science Major? Do you just like knowing how things work?
Want to gain some community service hours? Why not add a feature or make a
change to the GES Logging website!

I originally wrote this in my spare time at work, so I'm always looking for
help adding features. Check out the issues tab of this repository to see
anything that I'm looking for, or go out on a limb and propose something :)

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

### Get ruby working
[ruby](https://www.ruby-lang.org/en/documentation/installation/) is a
programming language that tries to get out of your way and let you get work
done. It is however, a little confusing to set up. It helps to have linux or a
mac.

If you already use ruby, great, otherwise do this:
1. [Install rbenv](https://github.com/rbenv/rbenv#installation) - this is a
   *ruby version manager* which keeps your ruby environment tidy.

2. [Install ruby-build](https://github.com/rbenv/ruby-build#readme) -
   this is a tool that makes it easy to install different versions of ruby.

3. Install ruby - `rbenv install 2.5.1`

4. Install the bundler - `cd geswebsite && gem install bundler`

5. Install the dependencies of this app - `bundle install`

### Play around!
You can check out the development server with `bundle exec rails server`

(If you get weird errors, create a local database with `bundle exec rails db:migrate`)

### Run tests
This app uses `rspec` for tests- meaning the tests live in the `spec/` folder.

Run them all with `bundle exec rake spec`.

### Create a pull request
Finally, send the change to me to merge it in by [making a pull
request](https://help.github.com/articles/using-pull-requests/)

### Need help?
Feel free to email me if you're stuck or really are interested in help! Not
saying this is a resume builder, but definitely saying you should work on side
projects. This is an easy way to get started!
