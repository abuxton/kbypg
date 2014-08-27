<!SLIDE>
# Beaker-Rspec #
##  Same as all the rest but different##

* Exposes some new variables for Beaker, related to both Beaker and its interaction with your SUT.
* Reflects the RSpec you are or are not familiar with, so easy to pick up and lots of sources for guidance and examples.


    @@@ Puppet

    describe 'creating a database' do
        # Using puppet_apply as a helper
        it 'should work with no errors' do
          pp = <<-EOS
            class { 'mysql::server': root_password => 'password' }
            mysql::db { 'spec1':
              user     => 'root1',
              password => 'password',
            }
          EOS
        end
      end


~~~SECTION:notes~~~
Whose used rspec? whose used Puppet-rspec?

~~~ENDSECTION~~~

~~~SECTION:handouts~~~

~~~ENDSECTION~~~

