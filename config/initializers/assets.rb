# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( chartkick.js )
Rails.application.config.assets.precompile += %w( favicon.png )
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "images")
Rails.application.config.assets.paths << Rails.root.join('vendor', 'images')
Rails.application.config.assets << Rails.root.join('vendor', 'assets', 'img')
Rails.application.config.assets << Rails.root.join('vendor', 'theme')

Rails.application.config.assets.precompile += %w(*.ico, *.jpg, *.png )
Rails.application.config.assets.precompile += %w( *.png *.gif *.jpg *.ico *.svg *.eot *.ttf *.woff *.woff2)
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
