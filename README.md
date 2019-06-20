# Effective Phoenix

This is a phoenix starter website.

## New App Setup

mix phx.new effective_phoenix

cd effective_phoenix
mix ecto.create

### Javascript

cd assets
npm install --save jquery bootstrap popper.js

In assets/js/app.js:

import "bootstrap";

import $ from "jquery";
window.jQuery = $;
window.$ = $;

### CSS

cd assets
npm install --save-dev node-sass sass-loader

mv css/app.css css/app.scss
Update app.js, replace app.css with app.scss

In assets/webpack.config.js:

{
  test: /\.s?css$/,
  use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader']
}

In assets/css/_bootstrap.scss:

$primary: purple;

In assets/css/app.scss:

@import "bootstrap";
@import '../node_modules/bootstrap/scss/bootstrap';



## Commands

mix phx.server
iex -S mix phx.server