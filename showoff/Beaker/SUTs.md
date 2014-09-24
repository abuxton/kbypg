<!SLIDE>
# Test Environments #
## SUTs (Systems Under Test) ##

    @@@yaml
      HOSTS:
        centos-64-x64:
          roles:
            - master
          platform: el-6-x86_64
          box : centos-64-x64-vbox4210-nocm
          box_url : http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210-nocm.box
          hypervisor : vagrant
      CONFIG:
        type: foss

Supports  ec2, Docker, virtual machines, and physical hardware.

Yaml  for configuration and reuse, with default support for install at build time, can utilise both both PE and Poss.

~~~SECTION:notes~~~

~~~ENDSECTION~~~

~~~SECTION:handouts~~~
[Creating A Test Environment](https://github.com/puppetlabs/beaker/wiki/Creating-A-Test-Environment)
~~~ENDSECTION~~~

