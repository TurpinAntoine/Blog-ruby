# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.javascripts, application.stylesheets, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w(
materialize.min.css
materialize.min.js
Roboto-Bold.woff
Roboto-Bold.woff2
Roboto-Light.woff
Roboto-Light.woff2
Roboto-Medium.woff
Roboto-Regular.woff
Roboto-Regular.woff2
Roboto-Thin.woff
Roboto-Thin.woff2
 )
