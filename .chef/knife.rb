# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "pdion891"
client_key               "#{current_dir}/pdion891.pem"
validation_client_name   "cloudstack-validator"
validation_key           "#{current_dir}/cloudstack-validator.pem"
chef_server_url          "https://chef-server01.acs.cloud.ca/organizations/cloudstack"
cookbook_path            ["#{current_dir}/../cookbooks"]
