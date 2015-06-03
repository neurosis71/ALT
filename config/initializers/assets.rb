# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

#for foundation
Rails.application.config.assets.precompile += %w( vendor/modernizr.js )

config.assets.paths << "#{Rails.root}/assets/javascripts"
config.assets.paths << "#{Rails.root}/assets/images"
config.assets.paths << "#{Rails.root}/assets/stylesheets"
config.assets.precompile += %w( .css .scss .coffee .js .JPG .jpg .png)