require 'trebuchet'

desc 'Installs avant-garde-ci into Amazon AWS.'
task :bootstrap do
  Trebuchet::Aws.new.deploy('git://github.com/duncan-bayne/avant-garde-ci.git', 'avant-garde-ci')
end
