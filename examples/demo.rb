
require 'zeebe/client'

stub = Zeebe::Client::GatewayProtocol::Gateway::Stub.new('localhost:26500', :this_channel_is_insecure)

puts stub.topology(Zeebe::Client::GatewayProtocol::TopologyRequest.new).inspect

puts stub.list_workflows(Zeebe::Client::GatewayProtocol::ListWorkflowsRequest.new).inspect
