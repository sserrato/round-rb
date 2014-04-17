require "pp"

project_root = File.expand_path("#{File.dirname(__FILE__)}/../")
$:.unshift "#{project_root}/lib"

## 
#$LOAD_PATH.unshift "#{project_root}/../bitcoin-ruby/lib"
#$LOAD_PATH.unshift "#{project_root}/../patchboard-rb/lib"



require "bitvault"
require_relative "helpers/mockchain.rb"
require_relative "helpers/fixtures.rb"

