# dynamically load all ruby beneath lib
Dir["#{__dir__}/**/*.rb"].sort.each { |file| require file }
module {{cookiecutter.module_name}}
end
