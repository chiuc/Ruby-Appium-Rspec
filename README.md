# RubyRspec

## Clean environment prior to install
`rvm implode`

`gem uninstall rvm`
## Search for this file in your dir and delete it
~/.rvmrc

## Installation and set up

### Using HomeBrew to install requirements, if not already installed ( in your terminal)
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)`

### used for SQL dev, Ruby Driver
`brew install FreeTDS` 

### gem for install TDS protocol 
`gem install tiny_tds`   

`brew install ruby-build`

`brew install rvm`

`rbenv install 2.3.0`

`gem install bundler`

`gem update --system`

`gem install rspec`

`gem install selenium-webdriver`

`gem install cucumber` 

## Then in any folder you are going to create your testing in, run this script from the terminal in the root directory
`rspec —init`

`create   .rspec
	--color
	--require spec_helper`
  
 `create   spec/spec_helper.rb`
 
## Dev Kit install (in the rubydev dir “where you downloaded the ruby dir”)
`dk.rb init`

`dk.rb install`

