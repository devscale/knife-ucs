# Author:: Murali Raju (<murali.raju@appliv.com>)
# Copyright:: Copyright (c) 2012 Murali Raju.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/knife/ucs_base'

class Chef
  class Knife
    class UcsPolicyDelete < Knife

      include Knife::UCSBase

      deps do
        require 'readline'
        require 'chef/json_compat'
        require 'chef/knife/bootstrap'
        Chef::Knife::Bootstrap.load_deps
      end

      banner "knife ucs policy delete (options)"

      attr_accessor :initial_sleep_delay

      option :policy,
        :long => "--policy-type POLICY",
        :description => "The policy type <boot,hostfirmware,managementfirmware>",
        :proc => Proc.new { |f| Chef::Config[:knife][:policy] = f }

      option :name,
        :long => "--policy-name POLICYNAME",
        :description => "The policy name",
        :proc => Proc.new { |f| Chef::Config[:knife][:name] = f }

      def run
        $stdout.sync = true
               
        
      end
    end
  end
end