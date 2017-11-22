Dir["#{RAILS_ROOT}/app/models/logical/*.rb"].each{ |file|
  require_dependency "logical/#{file[file.rindex('/') + 1...-3]}"}
}


