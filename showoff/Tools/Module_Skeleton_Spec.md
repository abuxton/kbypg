<!SLIDE>
# Module Skeleton Spec folder #
## Lets have some more reusability goodness!##
So what else? How about all some templated tests, spec helpers and nodesets! 
[morethan seven excellent blog] (http://www.morethanseven.net/2014/02/05/a-template-for-puppet-modules/)

    @@@ Sh
      #tree .puppet/var/puppet-module/skeleton/spec
          ├── acceptance
          │   ├── class_spec.rb.erb
          │   └── nodesets
          │       ├── centos-64-x64.yml
          │       ├── default.yml
          │       └── ubuntu-server-12042-x64.yml
          ├── classes
          │   ├── coverage_spec.rb
          │   └── example_spec.rb.erb
          ├── spec_helper.rb
          └── spec_helper_acceptance.rb.erb


~~~SECTION:notes~~~

credits:
[https://forge.puppetlabs.com/supported](https://forge.puppetlabs.com/supported)
[https://github.com/garethr/puppet-module-skeleton](https://github.com/garethr/puppet-module-skeleton)

[https://github.com/abuxton/module_skeleton](https://github.com/abuxton/module_skeleton)
~~~ENDSECTION~~~

~~~SECTION:handouts~~~
credits:
[https://github.com/garethr/puppet-module-skeleton](https://github.com/garethr/puppet-module-skeleton)
[https://forge.puppetlabs.com/supported](https://forge.puppetlabs.com/supported)

[https://github.com/abuxton/module_skeleton](https://github.com/abuxton/module_skeleton)
~~~ENDSECTION~~~

