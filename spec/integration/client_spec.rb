require 'spec_helper'

# do some basic smoke testing with the Zeebe::Client against a real Zeebe gateway port,
# the aim is not to test all possible procedures available via GRPC
describe Zeebe::Client do
  let(:client) do
    Zeebe::Client::GatewayProtocol::Gateway::Stub.new('localhost:26500', :this_channel_is_insecure)
  end

  it 'has topology' do
    topology = client.topology(Zeebe::Client::GatewayProtocol::TopologyRequest.new)
    expect(topology.clusterSize).to eq(1)
    expect(topology.replicationFactor).to eq(1)
  end
end
