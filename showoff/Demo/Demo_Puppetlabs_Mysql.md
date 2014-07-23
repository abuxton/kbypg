<!SLIDE>
# Demo #
## Puppetlabs-mysql ##

[Puppetlabs-mysql](https://forge.puppetlabs.com/puppetlabs/mysql/2.3.1) is being used for the demo.

* Puppetlabs supported module
* Built in Gemfile for Bundler
* Default use of centos-64 for nodesets/default.yaml using Vagrant.
* Examples of classes, acceptance, and unit test. 



~~~SECTION:notes~~~
running demo

* Download with module tool.
* ensure installed moduel Gemfile/gemfile.lock is +rw mode
* If running under boxen vagrant-wrapper `gem 'vagrant-wrapper',         :require => false` added to Gemfile 
* Run bundler to install all required gems.
* Then use `bundle exec rspec spec/acceptance` to run beaker
* if running on bad network run at least once before hand, and transition between paths, first demo run includes vagrantfile pull down, and also rpm setup etc.


https://forge.puppetlabs.com/puppetlabs/mysql
~~~ENDSECTION~~~

~~~SECTION:handouts~~~
this will be additional in print

~~~ENDSECTION~~~

