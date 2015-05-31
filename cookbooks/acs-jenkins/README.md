acs-jenkins Cookbook
====================

Custom cookbook for Apache CloudStack jenkins buildslave.

Requirements
------------

#### packages
- `python` - acs-jenkins need python to install pip for swift client.



Usage
-----

#### acs-jenkins::default

Do nothing at the moment


### acs-jenkins::buildslave-centos

Install dependencies for a centos buildslave usable for build, test and create RPMs.


### acs-jenkins::swift-client

configure the jenkins buildslave as swift client to upload artifact into swift.
generate config file using data dag for the user jenkins.


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github


License and Authors
-------------------
- Author:: Pierre-Luc Dion (<pdion891@apache.org>)

```text
Copyright:: Copyright (c) 2015 Apache.org

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
