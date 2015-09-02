require 'rake/testtask'

Rake::TestTask.new do |t|
   t.test_files = FileList[
     'test/lib/last_number/*_test.rb',
     'test/lib/last_number/store/*_test.rb'
   ]
end

desc "Run tests"
task :default => :test

