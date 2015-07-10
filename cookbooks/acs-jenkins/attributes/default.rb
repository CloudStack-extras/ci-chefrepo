#
# Cookbook Name:: acs-jenkins
# Attributes:: default
#
# Copyright 2015, cloudstack.apache.org
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# enable installation of Oracle JDK
default['java']['oracle']['accept_oracle_download_terms'] = 'true'
default['java']['jdk']['8']['x86_64']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz'
default['java']['jdk']['8']['install_path']  = '/usr/lib/jvm/jdk1.8.0_45'


default['acs-jenkins']['pkgs'] = value_for_platform(
  %w(centos redhat) => {
    %w(6.0 6.1 6.2 6.3 6.4 6.5 6.6) => ['rpm-build', 'createrepo', 'tomcat6', 'ws-commons-util', 'genisoimage', 'MySQL-python', 'expect'],
    'default' => ['rpm-build', 'createrepo', 'tomcat', 'ws-commons-util', 'genisoimage', 'MySQL-python', 'maven', 'expect']
  },
#  'ubuntu' => {
#    %w(12.04 12.10 13.04 13.10 14.04) => 'lxc-docker',
#    'default' => 'docker.io'
#  },
  'default' => nil
)