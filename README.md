[![Travis-CI Build Status](https://travis-ci.org/Haoen-Cui/personal-website.svg?branch=master)](https://travis-ci.org/Haoen-Cui/personal-website)

# About

This is the repository for [Haoen Cui](https://www.linkedin.com/in/haoencui/)'s [personal website](haoen-cui.github.io). An archived version is available [here](https://github.com/Haoen-Cui/haoen-cui.github.io/tree/master/_archive). 

# Development Log

- `.nojekyll`: GitHub will return YAML error for rendering GitHub pages with certain themes. A [solution](https://github.blog/2009-12-29-bypassing-jekyll-on-github-pages/) is to bypass `Jekyll` processing. We need to place an empty file with title `.nojekyll` to the root directory of both `master` and `gh_pages` branch. This will only become a problem if we want to host a GitHub project site. However, here, we want a GitHub user page.
- Per [Hugo help doc](https://gohugo.io/hosting-and-deployment/hosting-on-github/#stepbystep-instructions), we set up this mirroring repo in order to publish to the GitHub user page. See `.travis.yml` and `scripts/deploy.sh` for details.

# Acknowledgement

This website is built with the [**blogdown**](https://github.com/rstudio/blogdown) package. The theme was forked from [@gcushen/hugo-academic](https://github.com/gcushen/hugo-academic).
