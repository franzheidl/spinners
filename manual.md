## Updating for bower

  1. Update Version in bower.json
  
  
## Updating the Ruby gem

  0. List available versions
  
        $ gem list -r spinners

  1. Update version and date in lib/spinners.rb


  2. Build the gem:

        $ gem build spinners.gemspec
  
  
  3. Install the gem locally:

        $ gem install ./spinners-x-x-x.gem
        
        
  4. Test locally
  
  5. Push to rubygems.org
  
        $ gem push spinners-x-x-x.gem 
