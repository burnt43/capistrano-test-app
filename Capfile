# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
#require 'capistrano/deploy'

#require 'capistrano/bundler'

#capistrano/rails does not have a configurable rails app dir. it always assumes the root of the git repo is the rails dir, but ours is /hpbxgui. this is why we can't use these
#require 'capistrano/rails/assets'
#require 'capistrano/rails/migrations'


# Includes tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#
# require 'capistrano/rvm'
# require 'capistrano/rbenv'
# require 'capistrano/chruby'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }