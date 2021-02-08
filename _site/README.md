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

