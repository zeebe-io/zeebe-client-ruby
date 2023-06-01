#!/bin/bash

protoPath="proto"
genPath="lib/zeebe/client"

grpc_tools_ruby_protoc "${protoPath}/gateway.proto" --ruby_out="${genPath}" --grpc_out="${genPath}"

sed -i '' 's@proto/gateway_pb@zeebe/client/proto/gateway_pb@g' "${genPath}/proto/gateway_services_pb.rb"
sed -i '' 's@GatewayProtocol@Zeebe::Client::GatewayProtocol@g' "${genPath}/proto/gateway_pb.rb"
sed -i '' 's@GatewayProtocol@Zeebe::Client::GatewayProtocol@g' "${genPath}/proto/gateway_services_pb.rb"
