["test:units", "test:functionals", "test:integration"].each do |name|
    Rake::Task[name].prerequisites.clear
end