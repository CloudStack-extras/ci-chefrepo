#
# Cookbook Name:: acs-jenkins
# Recipe:: jdk18
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

include_recipe 'java'

#adding the below for the JDK8 installation
java_ark "oracle-jdk8-x86_64" do
  url node['java']['jdk']['8']['x86_64']['url']
  app_home node['java']['jdk']['8']['install_path']
  action :install
end