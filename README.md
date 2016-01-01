# BlackHulk

[![Build Status](https://travis-ci.org/FancyBlog/blackhulk.svg?branch=develop)](https://travis-ci.org/FancyBlog/blackhulk)

BlackHulk is a awesome blog engine for developer. Your posts will be saved on a GitHub repository and BlackHulk will display on a web browser.

# Installation

```
$ ./scripts/setup
```

# How it works

- Firstly, let's create new repository on your GitHub account. Blog posts are open issues labeled "Blog".

- Edit `config/application.yml` with your user name, repository, blog title, blog description and [personal access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/#creating-a-token).

```
# config/application.yml

github_user_name: "FancyBlog"
github_repo: "blogcontent"
personal_access_token: "xxxx"
blog_title: "xxxx"
blog_description: "Developer coolest platform for blogging"
```

- Run `gulp` to minify, clean your blog.

- Run `rails s` and enjoy

# Contributing

1. Fork it ( https://github.com/FancyBlog/blackhulk/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

# Copyright

Copyright © 2016 Duy Khoa – Released under MIT License
