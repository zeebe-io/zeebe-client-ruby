
require 'zeebe/client'

zeebe_client = Zeebe::Client::GatewayProtocol::Gateway::Stub.new('localhost:26500', :this_channel_is_insecure)

topology = zeebe_client.topology(Zeebe::Client::GatewayProtocol::TopologyRequest.new)

puts "Zeebe topology:"
puts "  Cluster size: #{topology.clusterSize}"
puts "  Replication factor: #{topology.replicationFactor}"
puts "  Brokers:"

topology.brokers.each do |b|
  puts "    - id: #{b.nodeId}, address: #{b.host}:#{b.port}, partitions: #{b.partitions.map { |p| p.partitionId }}"
end
