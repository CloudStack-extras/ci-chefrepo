#
# Cookbook Name:: acs-jenkins
# Recipe:: buildslave-centos
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
package node['acs-jenkins']['pkgs']

PGP_ID = data_bag_item('pgp', 'cloudstack')

bsw_gpg_load_key_from_string 'a string key' do
    key_contents PGP_ID['private']
    for_user 'jenkins' # The user you want to install the key to
end