# FIN - Hacker News Clone App

Hacker News Clone App is a clone of the newsfeed on HackerNews. It will use Ruby-on-Rails.

## Main Features

- When a user scrolls to the bottom of the page, another 30 posts are appended to the bottom of the page using AJAX.
- Mobile responsive
- CSS layout using Flexbox

## Live Demo
- https://fin-hacker-news-clone.herokuapp.com/

## Screenshots

### Main Page
![Main Page](https://github.com/egomatsushita/FIN-HackerNewsClone/blob/master/public/FIN-HackerNewsClone_Main.png?raw=true)

### Main Page - Gif
![Main Page - Gif](https://github.com/egomatsushita/FIN-HackerNewsClone/blob/master/public/fin-hacker-news-clone-responsive.gif)

### Mobile Responsive - Gif
![Mobile Responsive](https://github.com/egomatsushita/FIN-HackerNewsClone/blob/master/public/fin-hacker-news-clone-main.gif)

## Possible Improvements

- “Loading…” at the bottom of the page is hard coded
- It is only allowed to show up to 500 top stories
- Search input do nothing

## Install

1. Clone the repo: https://github.com/egomatsushita/FIN-HackerNewsClone
2. In the FIN-HackerNewsClone directory run bundle install
3. Install postgresql
4. Create the database
5. Start the server: rails server