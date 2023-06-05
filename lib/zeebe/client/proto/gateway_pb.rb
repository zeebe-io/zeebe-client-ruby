# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/gateway.proto

require 'google/protobuf'


descriptor_data = "\n\x13proto/gateway.proto\x12\x10gateway_protocol\"\x8e\x01\n\x13\x41\x63tivateJobsRequest\x12\x0c\n\x04type\x18\x01 \x01(\t\x12\x0e\n\x06worker\x18\x02 \x01(\t\x12\x0f\n\x07timeout\x18\x03 \x01(\x03\x12\x19\n\x11maxJobsToActivate\x18\x04 \x01(\x05\x12\x15\n\rfetchVariable\x18\x05 \x03(\t\x12\x16\n\x0erequestTimeout\x18\x06 \x01(\x03\"D\n\x14\x41\x63tivateJobsResponse\x12,\n\x04jobs\x18\x01 \x03(\x0b\x32\x1e.gateway_protocol.ActivatedJob\"\xa8\x02\n\x0c\x41\x63tivatedJob\x12\x0b\n\x03key\x18\x01 \x01(\x03\x12\x0c\n\x04type\x18\x02 \x01(\t\x12\x1a\n\x12processInstanceKey\x18\x03 \x01(\x03\x12\x15\n\rbpmnProcessId\x18\x04 \x01(\t\x12 \n\x18processDefinitionVersion\x18\x05 \x01(\x05\x12\x1c\n\x14processDefinitionKey\x18\x06 \x01(\x03\x12\x11\n\telementId\x18\x07 \x01(\t\x12\x1a\n\x12\x65lementInstanceKey\x18\x08 \x01(\x03\x12\x15\n\rcustomHeaders\x18\t \x01(\t\x12\x0e\n\x06worker\x18\n \x01(\t\x12\x0f\n\x07retries\x18\x0b \x01(\x05\x12\x10\n\x08\x64\x65\x61\x64line\x18\x0c \x01(\x03\x12\x11\n\tvariables\x18\r \x01(\t\":\n\x1c\x43\x61ncelProcessInstanceRequest\x12\x1a\n\x12processInstanceKey\x18\x01 \x01(\x03\"\x1f\n\x1d\x43\x61ncelProcessInstanceResponse\"7\n\x12\x43ompleteJobRequest\x12\x0e\n\x06jobKey\x18\x01 \x01(\x03\x12\x11\n\tvariables\x18\x02 \x01(\t\"\x15\n\x13\x43ompleteJobResponse\"\xcd\x01\n\x1c\x43reateProcessInstanceRequest\x12\x1c\n\x14processDefinitionKey\x18\x01 \x01(\x03\x12\x15\n\rbpmnProcessId\x18\x02 \x01(\t\x12\x0f\n\x07version\x18\x03 \x01(\x05\x12\x11\n\tvariables\x18\x04 \x01(\t\x12T\n\x11startInstructions\x18\x05 \x03(\x0b\x32\x39.gateway_protocol.ProcessInstanceCreationStartInstruction\"<\n\'ProcessInstanceCreationStartInstruction\x12\x11\n\telementId\x18\x01 \x01(\t\"\x81\x01\n\x1d\x43reateProcessInstanceResponse\x12\x1c\n\x14processDefinitionKey\x18\x01 \x01(\x03\x12\x15\n\rbpmnProcessId\x18\x02 \x01(\t\x12\x0f\n\x07version\x18\x03 \x01(\x05\x12\x1a\n\x12processInstanceKey\x18\x04 \x01(\x03\"\x99\x01\n&CreateProcessInstanceWithResultRequest\x12?\n\x07request\x18\x01 \x01(\x0b\x32..gateway_protocol.CreateProcessInstanceRequest\x12\x16\n\x0erequestTimeout\x18\x02 \x01(\x03\x12\x16\n\x0e\x66\x65tchVariables\x18\x03 \x03(\t\"\x9e\x01\n\'CreateProcessInstanceWithResultResponse\x12\x1c\n\x14processDefinitionKey\x18\x01 \x01(\x03\x12\x15\n\rbpmnProcessId\x18\x02 \x01(\t\x12\x0f\n\x07version\x18\x03 \x01(\x05\x12\x1a\n\x12processInstanceKey\x18\x04 \x01(\x03\x12\x11\n\tvariables\x18\x05 \x01(\t\"U\n\x17\x45valuateDecisionRequest\x12\x13\n\x0b\x64\x65\x63isionKey\x18\x01 \x01(\x03\x12\x12\n\ndecisionId\x18\x02 \x01(\t\x12\x11\n\tvariables\x18\x03 \x01(\t\"\xbe\x02\n\x18\x45valuateDecisionResponse\x12\x13\n\x0b\x64\x65\x63isionKey\x18\x01 \x01(\x03\x12\x12\n\ndecisionId\x18\x02 \x01(\t\x12\x14\n\x0c\x64\x65\x63isionName\x18\x03 \x01(\t\x12\x17\n\x0f\x64\x65\x63isionVersion\x18\x04 \x01(\x05\x12\x1e\n\x16\x64\x65\x63isionRequirementsId\x18\x05 \x01(\t\x12\x1f\n\x17\x64\x65\x63isionRequirementsKey\x18\x06 \x01(\x03\x12\x16\n\x0e\x64\x65\x63isionOutput\x18\x07 \x01(\t\x12?\n\x12\x65valuatedDecisions\x18\x08 \x03(\x0b\x32#.gateway_protocol.EvaluatedDecision\x12\x18\n\x10\x66\x61iledDecisionId\x18\t \x01(\t\x12\x16\n\x0e\x66\x61ilureMessage\x18\n \x01(\t\"\x99\x02\n\x11\x45valuatedDecision\x12\x13\n\x0b\x64\x65\x63isionKey\x18\x01 \x01(\x03\x12\x12\n\ndecisionId\x18\x02 \x01(\t\x12\x14\n\x0c\x64\x65\x63isionName\x18\x03 \x01(\t\x12\x17\n\x0f\x64\x65\x63isionVersion\x18\x04 \x01(\x05\x12\x14\n\x0c\x64\x65\x63isionType\x18\x05 \x01(\t\x12\x16\n\x0e\x64\x65\x63isionOutput\x18\x06 \x01(\t\x12;\n\x0cmatchedRules\x18\x07 \x03(\x0b\x32%.gateway_protocol.MatchedDecisionRule\x12\x41\n\x0f\x65valuatedInputs\x18\x08 \x03(\x0b\x32(.gateway_protocol.EvaluatedDecisionInput\"P\n\x16\x45valuatedDecisionInput\x12\x0f\n\x07inputId\x18\x01 \x01(\t\x12\x11\n\tinputName\x18\x02 \x01(\t\x12\x12\n\ninputValue\x18\x03 \x01(\t\"T\n\x17\x45valuatedDecisionOutput\x12\x10\n\x08outputId\x18\x01 \x01(\t\x12\x12\n\noutputName\x18\x02 \x01(\t\x12\x13\n\x0boutputValue\x18\x03 \x01(\t\"}\n\x13MatchedDecisionRule\x12\x0e\n\x06ruleId\x18\x01 \x01(\t\x12\x11\n\truleIndex\x18\x02 \x01(\x05\x12\x43\n\x10\x65valuatedOutputs\x18\x03 \x03(\x0b\x32).gateway_protocol.EvaluatedDecisionOutput\"U\n\x14\x44\x65ployProcessRequest\x12\x39\n\tprocesses\x18\x01 \x03(\x0b\x32&.gateway_protocol.ProcessRequestObject:\x02\x18\x01\"<\n\x14ProcessRequestObject\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x12\n\ndefinition\x18\x02 \x01(\x0c:\x02\x18\x01\"^\n\x15\x44\x65ployProcessResponse\x12\x0b\n\x03key\x18\x01 \x01(\x03\x12\x34\n\tprocesses\x18\x02 \x03(\x0b\x32!.gateway_protocol.ProcessMetadata:\x02\x18\x01\"F\n\x15\x44\x65ployResourceRequest\x12-\n\tresources\x18\x01 \x03(\x0b\x32\x1a.gateway_protocol.Resource\")\n\x08Resource\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x07\x63ontent\x18\x02 \x01(\x0c\"X\n\x16\x44\x65ployResourceResponse\x12\x0b\n\x03key\x18\x01 \x01(\x03\x12\x31\n\x0b\x64\x65ployments\x18\x02 \x03(\x0b\x32\x1c.gateway_protocol.Deployment\"\xd6\x01\n\nDeployment\x12\x34\n\x07process\x18\x01 \x01(\x0b\x32!.gateway_protocol.ProcessMetadataH\x00\x12\x36\n\x08\x64\x65\x63ision\x18\x02 \x01(\x0b\x32\".gateway_protocol.DecisionMetadataH\x00\x12N\n\x14\x64\x65\x63isionRequirements\x18\x03 \x01(\x0b\x32..gateway_protocol.DecisionRequirementsMetadataH\x00\x42\n\n\x08Metadata\"m\n\x0fProcessMetadata\x12\x15\n\rbpmnProcessId\x18\x01 \x01(\t\x12\x0f\n\x07version\x18\x02 \x01(\x05\x12\x1c\n\x14processDefinitionKey\x18\x03 \x01(\x03\x12\x14\n\x0cresourceName\x18\x04 \x01(\t\"\xac\x01\n\x10\x44\x65\x63isionMetadata\x12\x15\n\rdmnDecisionId\x18\x01 \x01(\t\x12\x17\n\x0f\x64mnDecisionName\x18\x02 \x01(\t\x12\x0f\n\x07version\x18\x03 \x01(\x05\x12\x13\n\x0b\x64\x65\x63isionKey\x18\x04 \x01(\x03\x12!\n\x19\x64mnDecisionRequirementsId\x18\x05 \x01(\t\x12\x1f\n\x17\x64\x65\x63isionRequirementsKey\x18\x06 \x01(\x03\"\xae\x01\n\x1c\x44\x65\x63isionRequirementsMetadata\x12!\n\x19\x64mnDecisionRequirementsId\x18\x01 \x01(\t\x12#\n\x1b\x64mnDecisionRequirementsName\x18\x02 \x01(\t\x12\x0f\n\x07version\x18\x03 \x01(\x05\x12\x1f\n\x17\x64\x65\x63isionRequirementsKey\x18\x04 \x01(\x03\x12\x14\n\x0cresourceName\x18\x05 \x01(\t\"p\n\x0e\x46\x61ilJobRequest\x12\x0e\n\x06jobKey\x18\x01 \x01(\x03\x12\x0f\n\x07retries\x18\x02 \x01(\x05\x12\x14\n\x0c\x65rrorMessage\x18\x03 \x01(\t\x12\x14\n\x0cretryBackOff\x18\x04 \x01(\x03\x12\x11\n\tvariables\x18\x05 \x01(\t\"\x11\n\x0f\x46\x61ilJobResponse\"_\n\x11ThrowErrorRequest\x12\x0e\n\x06jobKey\x18\x01 \x01(\x03\x12\x11\n\terrorCode\x18\x02 \x01(\t\x12\x14\n\x0c\x65rrorMessage\x18\x03 \x01(\t\x12\x11\n\tvariables\x18\x04 \x01(\t\"\x14\n\x12ThrowErrorResponse\"w\n\x15PublishMessageRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x16\n\x0e\x63orrelationKey\x18\x02 \x01(\t\x12\x12\n\ntimeToLive\x18\x03 \x01(\x03\x12\x11\n\tmessageId\x18\x04 \x01(\t\x12\x11\n\tvariables\x18\x05 \x01(\t\"%\n\x16PublishMessageResponse\x12\x0b\n\x03key\x18\x01 \x01(\x03\"-\n\x16ResolveIncidentRequest\x12\x13\n\x0bincidentKey\x18\x01 \x01(\x03\"\x19\n\x17ResolveIncidentResponse\"\x11\n\x0fTopologyRequest\"\xa2\x01\n\x10TopologyResponse\x12-\n\x07\x62rokers\x18\x01 \x03(\x0b\x32\x1c.gateway_protocol.BrokerInfo\x12\x13\n\x0b\x63lusterSize\x18\x02 \x01(\x05\x12\x17\n\x0fpartitionsCount\x18\x03 \x01(\x05\x12\x19\n\x11replicationFactor\x18\x04 \x01(\x05\x12\x16\n\x0egatewayVersion\x18\x05 \x01(\t\"z\n\nBrokerInfo\x12\x0e\n\x06nodeId\x18\x01 \x01(\x05\x12\x0c\n\x04host\x18\x02 \x01(\t\x12\x0c\n\x04port\x18\x03 \x01(\x05\x12/\n\npartitions\x18\x04 \x03(\x0b\x32\x1b.gateway_protocol.Partition\x12\x0f\n\x07version\x18\x05 \x01(\t\"\xa0\x02\n\tPartition\x12\x13\n\x0bpartitionId\x18\x01 \x01(\x05\x12=\n\x04role\x18\x02 \x01(\x0e\x32/.gateway_protocol.Partition.PartitionBrokerRole\x12\x41\n\x06health\x18\x03 \x01(\x0e\x32\x31.gateway_protocol.Partition.PartitionBrokerHealth\"=\n\x13PartitionBrokerRole\x12\n\n\x06LEADER\x10\x00\x12\x0c\n\x08\x46OLLOWER\x10\x01\x12\x0c\n\x08INACTIVE\x10\x02\"=\n\x15PartitionBrokerHealth\x12\x0b\n\x07HEALTHY\x10\x00\x12\r\n\tUNHEALTHY\x10\x01\x12\x08\n\x04\x44\x45\x41\x44\x10\x02\":\n\x17UpdateJobRetriesRequest\x12\x0e\n\x06jobKey\x18\x01 \x01(\x03\x12\x0f\n\x07retries\x18\x02 \x01(\x05\"\x1a\n\x18UpdateJobRetriesResponse\"S\n\x13SetVariablesRequest\x12\x1a\n\x12\x65lementInstanceKey\x18\x01 \x01(\x03\x12\x11\n\tvariables\x18\x02 \x01(\t\x12\r\n\x05local\x18\x03 \x01(\x08\"#\n\x14SetVariablesResponse\x12\x0b\n\x03key\x18\x01 \x01(\x03\"\xa0\x04\n\x1cModifyProcessInstanceRequest\x12\x1a\n\x12processInstanceKey\x18\x01 \x01(\x03\x12`\n\x14\x61\x63tivateInstructions\x18\x02 \x03(\x0b\x32\x42.gateway_protocol.ModifyProcessInstanceRequest.ActivateInstruction\x12\x62\n\x15terminateInstructions\x18\x03 \x03(\x0b\x32\x43.gateway_protocol.ModifyProcessInstanceRequest.TerminateInstruction\x1a\xae\x01\n\x13\x41\x63tivateInstruction\x12\x11\n\telementId\x18\x01 \x01(\t\x12\"\n\x1a\x61ncestorElementInstanceKey\x18\x02 \x01(\x03\x12`\n\x14variableInstructions\x18\x03 \x03(\x0b\x32\x42.gateway_protocol.ModifyProcessInstanceRequest.VariableInstruction\x1a\x39\n\x13VariableInstruction\x12\x11\n\tvariables\x18\x01 \x01(\t\x12\x0f\n\x07scopeId\x18\x02 \x01(\t\x1a\x32\n\x14TerminateInstruction\x12\x1a\n\x12\x65lementInstanceKey\x18\x01 \x01(\x03\"\x1f\n\x1dModifyProcessInstanceResponse\",\n\x15\x44\x65leteResourceRequest\x12\x13\n\x0bresourceKey\x18\x01 \x01(\x03\"\x18\n\x16\x44\x65leteResourceResponse\"?\n\x16\x42roadcastSignalRequest\x12\x12\n\nsignalName\x18\x01 \x01(\t\x12\x11\n\tvariables\x18\x02 \x01(\t\"&\n\x17\x42roadcastSignalResponse\x12\x0b\n\x03key\x18\x01 \x01(\x03\x32\x86\x0f\n\x07Gateway\x12\x61\n\x0c\x41\x63tivateJobs\x12%.gateway_protocol.ActivateJobsRequest\x1a&.gateway_protocol.ActivateJobsResponse\"\x00\x30\x01\x12z\n\x15\x43\x61ncelProcessInstance\x12..gateway_protocol.CancelProcessInstanceRequest\x1a/.gateway_protocol.CancelProcessInstanceResponse\"\x00\x12\\\n\x0b\x43ompleteJob\x12$.gateway_protocol.CompleteJobRequest\x1a%.gateway_protocol.CompleteJobResponse\"\x00\x12z\n\x15\x43reateProcessInstance\x12..gateway_protocol.CreateProcessInstanceRequest\x1a/.gateway_protocol.CreateProcessInstanceResponse\"\x00\x12\x98\x01\n\x1f\x43reateProcessInstanceWithResult\x12\x38.gateway_protocol.CreateProcessInstanceWithResultRequest\x1a\x39.gateway_protocol.CreateProcessInstanceWithResultResponse\"\x00\x12k\n\x10\x45valuateDecision\x12).gateway_protocol.EvaluateDecisionRequest\x1a*.gateway_protocol.EvaluateDecisionResponse\"\x00\x12\x65\n\rDeployProcess\x12&.gateway_protocol.DeployProcessRequest\x1a\'.gateway_protocol.DeployProcessResponse\"\x03\x88\x02\x01\x12\x65\n\x0e\x44\x65ployResource\x12\'.gateway_protocol.DeployResourceRequest\x1a(.gateway_protocol.DeployResourceResponse\"\x00\x12P\n\x07\x46\x61ilJob\x12 .gateway_protocol.FailJobRequest\x1a!.gateway_protocol.FailJobResponse\"\x00\x12Y\n\nThrowError\x12#.gateway_protocol.ThrowErrorRequest\x1a$.gateway_protocol.ThrowErrorResponse\"\x00\x12\x65\n\x0ePublishMessage\x12\'.gateway_protocol.PublishMessageRequest\x1a(.gateway_protocol.PublishMessageResponse\"\x00\x12h\n\x0fResolveIncident\x12(.gateway_protocol.ResolveIncidentRequest\x1a).gateway_protocol.ResolveIncidentResponse\"\x00\x12_\n\x0cSetVariables\x12%.gateway_protocol.SetVariablesRequest\x1a&.gateway_protocol.SetVariablesResponse\"\x00\x12S\n\x08Topology\x12!.gateway_protocol.TopologyRequest\x1a\".gateway_protocol.TopologyResponse\"\x00\x12k\n\x10UpdateJobRetries\x12).gateway_protocol.UpdateJobRetriesRequest\x1a*.gateway_protocol.UpdateJobRetriesResponse\"\x00\x12z\n\x15ModifyProcessInstance\x12..gateway_protocol.ModifyProcessInstanceRequest\x1a/.gateway_protocol.ModifyProcessInstanceResponse\"\x00\x12\x65\n\x0e\x44\x65leteResource\x12\'.gateway_protocol.DeleteResourceRequest\x1a(.gateway_protocol.DeleteResourceResponse\"\x00\x12h\n\x0f\x42roadcastSignal\x12(.gateway_protocol.BroadcastSignalRequest\x1a).gateway_protocol.BroadcastSignalResponse\"\x00\x42,\n!io.camunda.zeebe.gateway.protocolP\x00Z\x05./;pbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Zeebe::Client::GatewayProtocol
  ActivateJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ActivateJobsRequest").msgclass
  ActivateJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ActivateJobsResponse").msgclass
  ActivatedJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ActivatedJob").msgclass
  CancelProcessInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CancelProcessInstanceRequest").msgclass
  CancelProcessInstanceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CancelProcessInstanceResponse").msgclass
  CompleteJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CompleteJobRequest").msgclass
  CompleteJobResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CompleteJobResponse").msgclass
  CreateProcessInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CreateProcessInstanceRequest").msgclass
  ProcessInstanceCreationStartInstruction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ProcessInstanceCreationStartInstruction").msgclass
  CreateProcessInstanceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CreateProcessInstanceResponse").msgclass
  CreateProcessInstanceWithResultRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CreateProcessInstanceWithResultRequest").msgclass
  CreateProcessInstanceWithResultResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CreateProcessInstanceWithResultResponse").msgclass
  EvaluateDecisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.EvaluateDecisionRequest").msgclass
  EvaluateDecisionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.EvaluateDecisionResponse").msgclass
  EvaluatedDecision = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.EvaluatedDecision").msgclass
  EvaluatedDecisionInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.EvaluatedDecisionInput").msgclass
  EvaluatedDecisionOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.EvaluatedDecisionOutput").msgclass
  MatchedDecisionRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.MatchedDecisionRule").msgclass
  DeployProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeployProcessRequest").msgclass
  ProcessRequestObject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ProcessRequestObject").msgclass
  DeployProcessResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeployProcessResponse").msgclass
  DeployResourceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeployResourceRequest").msgclass
  Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.Resource").msgclass
  DeployResourceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeployResourceResponse").msgclass
  Deployment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.Deployment").msgclass
  ProcessMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ProcessMetadata").msgclass
  DecisionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DecisionMetadata").msgclass
  DecisionRequirementsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DecisionRequirementsMetadata").msgclass
  FailJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.FailJobRequest").msgclass
  FailJobResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.FailJobResponse").msgclass
  ThrowErrorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ThrowErrorRequest").msgclass
  ThrowErrorResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ThrowErrorResponse").msgclass
  PublishMessageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.PublishMessageRequest").msgclass
  PublishMessageResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.PublishMessageResponse").msgclass
  ResolveIncidentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ResolveIncidentRequest").msgclass
  ResolveIncidentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ResolveIncidentResponse").msgclass
  TopologyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.TopologyRequest").msgclass
  TopologyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.TopologyResponse").msgclass
  BrokerInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.BrokerInfo").msgclass
  Partition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.Partition").msgclass
  Partition::PartitionBrokerRole = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.Partition.PartitionBrokerRole").enummodule
  Partition::PartitionBrokerHealth = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.Partition.PartitionBrokerHealth").enummodule
  UpdateJobRetriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.UpdateJobRetriesRequest").msgclass
  UpdateJobRetriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.UpdateJobRetriesResponse").msgclass
  SetVariablesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.SetVariablesRequest").msgclass
  SetVariablesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.SetVariablesResponse").msgclass
  ModifyProcessInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ModifyProcessInstanceRequest").msgclass
  ModifyProcessInstanceRequest::ActivateInstruction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ModifyProcessInstanceRequest.ActivateInstruction").msgclass
  ModifyProcessInstanceRequest::VariableInstruction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ModifyProcessInstanceRequest.VariableInstruction").msgclass
  ModifyProcessInstanceRequest::TerminateInstruction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ModifyProcessInstanceRequest.TerminateInstruction").msgclass
  ModifyProcessInstanceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ModifyProcessInstanceResponse").msgclass
  DeleteResourceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeleteResourceRequest").msgclass
  DeleteResourceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeleteResourceResponse").msgclass
  BroadcastSignalRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.BroadcastSignalRequest").msgclass
  BroadcastSignalResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.BroadcastSignalResponse").msgclass
end
