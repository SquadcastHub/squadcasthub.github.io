Squadcast Documentation

## Architecture

```text
    - Root
        - _data
            - sidebars
                - mydoc_sidebar.yml ( left hand side navigation panel )
            - tags.yml ( allowed tags, used for related docs )
            - topnav.yml ( navigation bar )
        - _includes
            - feedback.html
            - footer.html ( footer template )
            - head.html ( head template )
            - sidebar.html ( sidebar template )
            - topnav.html ( navbar template )
        - _layouts
            - page.html ( page template )
        - _site ( contains generated files )
        - docs
            - images ( images/screenshots for the docs )
        - images ( images/screenshots for the homepage )
        - pages 
            - mydoc ( contains the .md files )
        - _config.yml ( configuration file )
        - 404.md
        - index.html ( homepage )
```

## Local Server

1. Comment out `url: SquadcastHub` and `baseurl: /squadcasthub.github.io` in `_config.yml`
2. Execute `bundle exec jekyll serve`
3. Executes on localhost port `4000`

## Before commit & push

1. We dont't have a CI/CD enabled for this, and the serving is done from the Repo directly.
2. So the pages need to be generated before `git commit`.
3. To generate the pages, run `bundle exec jekyll build`.
4. To test the page layouts and serve paths for the documentation, use `bundle exec jekyll serve` and visit http://localhost:4000
5. Always rebase/checkout a branch from master, because page generation can override some unmerged commits from the local development branch or unupdated branch. And of course merging is going to be painful.