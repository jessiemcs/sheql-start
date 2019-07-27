# Projects

This is a repo you can use to start your projects.

Use the [sinatra-app](https://github.com/Gmfholley/sinatra-app) walk throughs as examples to guide you.

1. Log into GitHub and fork this repo to your own account.
1. Click the clone or download link and copy the ssh clone name.  (Toggle between https and ssh until you see Clone with ssh indicator.)
1. Open Git Bash and type `git clone ` and then paste the name of the repo you copied.  It might look like `git clone git@github.com:Gmfholley/sheql-start.git`.
1. Change your directory into the folder you just made: `cd sheql-start`.
1. Run gem install bundler
1. `bundle install` to install all the files for this repo.
1. Run rake db:setupMCS
1. Run bundle clean --force if there's unresolved specs
1. Do rake db:create to make a database
1. Do rake db:migrate to run a migration
1. Do rake db:seed to open and run a seeds file

Now that you've installed and started postgres, you're ready to get started.

I have written a little helper method to serve Sinatra instead of `ruby ./app.rb -p $PORT -o $IP`.  Instead, just type in terminal.

```
$ rake serve
```

Enjoy!

1. [Set up Repo](./set_up.md) (If you have done this already for active record, you can skip.)
1. [Set Up Authentication](./google_authentication.md)
1.  Work on your Project!

## At the end of class:
1. [Clean up your layout page](./update_html.md)
1. [Write your blog post](./write_blog_post.md)
1. [Commit and Push Your Changes to GitHub](https://github.com/Gmfholley/git-knock-knock/blob/master/README.md#simple-push-of-master-branch-to-github)
1. [Launch to Heroku (with your teacher)](./launch_to_heroku.md)
