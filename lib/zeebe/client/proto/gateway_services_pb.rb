# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: proto/gateway.proto for package 'gateway_protocol'

require 'grpc'
require 'zeebe/client/proto/gateway_pb'

module Zeebe::Client::GatewayProtocol
  module Gateway
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'gateway_protocol.Gateway'

      #
      # Iterates through all known partitions round-robin and activates up to the requested
      # maximum and streams them back to the client as they are activated.
      #
      # Errors:
      # INVALID_ARGUMENT:
      # - type is blank (empty string, null)
      # - worker is blank (empty string, null)
      # - timeout less than 1
      # - maxJobsToActivate is less than 1
      rpc :ActivateJobs, ::Zeebe::Client::GatewayProtocol::ActivateJobsRequest, stream(::Zeebe::Client::GatewayProtocol::ActivateJobsResponse)
      #
      # Cancels a running process instance
      #
      # Errors:
      # NOT_FOUND:
      # - no process instance exists with the given key
      rpc :CancelProcessInstance, ::Zeebe::Client::GatewayProtocol::CancelProcessInstanceRequest, ::Zeebe::Client::GatewayProtocol::CancelProcessInstanceResponse
      #
      # Completes a job with the given variables, which allows completing the associated service task.
      #
      # Errors:
      # NOT_FOUND:
      # - no job exists with the given job key. Note that since jobs are removed once completed,
      # it could be that this job did exist at some point.
      #
      # FAILED_PRECONDITION:
      # - the job was marked as failed. In that case, the related incident must be resolved before
      # the job can be activated again and completed.
      rpc :CompleteJob, ::Zeebe::Client::GatewayProtocol::CompleteJobRequest, ::Zeebe::Client::GatewayProtocol::CompleteJobResponse
      #
      # Creates and starts an instance of the specified process. The process definition to use to
      # create the instance can be specified either using its unique key (as returned by
      # DeployProcess), or using the BPMN process ID and a version. Pass -1 as the version to use the
      # latest deployed version. Note that only processes with none start events can be started through
      # this command.
      #
      # Errors:
      # NOT_FOUND:
      # - no process with the given key exists (if processDefinitionKey was given)
      # - no process with the given process ID exists (if bpmnProcessId was given but version was -1)
      # - no process with the given process ID and version exists (if both bpmnProcessId and version were given)
      #
      # FAILED_PRECONDITION:
      # - the process definition does not contain a none start event; only processes with none
      # start event can be started manually.
      #
      # INVALID_ARGUMENT:
      # - the given variables argument is not a valid JSON document; it is expected to be a valid
      # JSON document where the root node is an object.
      rpc :CreateProcessInstance, ::Zeebe::Client::GatewayProtocol::CreateProcessInstanceRequest, ::Zeebe::Client::GatewayProtocol::CreateProcessInstanceResponse
      #
      # Behaves similarly to `rpc CreateProcessInstance`, except that a successful response is received when the process completes successfully.
      rpc :CreateProcessInstanceWithResult, ::Zeebe::Client::GatewayProtocol::CreateProcessInstanceWithResultRequest, ::Zeebe::Client::GatewayProtocol::CreateProcessInstanceWithResultResponse
      #
      # Evaluates a decision. The decision to evaluate can be specified either by
      # using its unique key (as returned by DeployResource), or using the decision
      # ID. When using the decision ID, the latest deployed version of the decision
      # is used.
      #
      # Errors:
      # INVALID_ARGUMENT:
      # - no decision with the given key exists (if decisionKey was given)
      # - no decision with the given decision ID exists (if decisionId was given)
      # - both decision ID and decision KEY were provided, or are missing
      rpc :EvaluateDecision, ::Zeebe::Client::GatewayProtocol::EvaluateDecisionRequest, ::Zeebe::Client::GatewayProtocol::EvaluateDecisionResponse
      #
      # Deploys one or more processes to Zeebe. Note that this is an atomic call,
      # i.e. either all processes are deployed, or none of them are.
      #
      # Errors:
      # INVALID_ARGUMENT:
      # - no resources given.
      # - if at least one resource is invalid. A resource is considered invalid if:
      # - the resource data is not deserializable (e.g. detected as BPMN, but it's broken XML)
      # - the process is invalid (e.g. an event-based gateway has an outgoing sequence flow to a task)
      rpc :DeployProcess, ::Zeebe::Client::GatewayProtocol::DeployProcessRequest, ::Zeebe::Client::GatewayProtocol::DeployProcessResponse
      #
      # Deploys one or more resources (e.g. processes or decision models) to Zeebe.
      # Note that this is an atomic call, i.e. either all resources are deployed, or none of them are.
      #
      # Errors:
      # INVALID_ARGUMENT:
      # - no resources given.
      # - if at least one resource is invalid. A resource is considered invalid if:
      # - the content is not deserializable (e.g. detected as BPMN, but it's broken XML)
      # - the content is invalid (e.g. an event-based gateway has an outgoing sequence flow to a task)
      rpc :DeployResource, ::Zeebe::Client::GatewayProtocol::DeployResourceRequest, ::Zeebe::Client::GatewayProtocol::DeployResourceResponse
      #
      # Marks the job as failed; if the retries argument is positive, then the job will be immediately
      # activatable again, and a worker could try again to process it. If it is zero or negative however,
      # an incident will be raised, tagged with the given errorMessage, and the job will not be
      # activatable until the incident is resolved.
      #
      # Errors:
      # NOT_FOUND:
      # - no job was found with the given key
      #
      # FAILED_PRECONDITION:
      # - the job was not activated
      # - the job is already in a failed state, i.e. ran out of retries
      rpc :FailJob, ::Zeebe::Client::GatewayProtocol::FailJobRequest, ::Zeebe::Client::GatewayProtocol::FailJobResponse
      #
      # Reports a business error (i.e. non-technical) that occurs while processing a job. The error is handled in the process by an error catch event. If there is no error catch event with the specified errorCode then an incident will be raised instead.
      #
      # Errors:
      # NOT_FOUND:
      # - no job was found with the given key
      #
      # FAILED_PRECONDITION:
      # - the job is not in an activated state
      rpc :ThrowError, ::Zeebe::Client::GatewayProtocol::ThrowErrorRequest, ::Zeebe::Client::GatewayProtocol::ThrowErrorResponse
      #
      # Publishes a single message. Messages are published to specific partitions computed from their
      # correlation keys.
      #
      # Errors:
      # ALREADY_EXISTS:
      # - a message with the same ID was previously published (and is still alive)
      rpc :PublishMessage, ::Zeebe::Client::GatewayProtocol::PublishMessageRequest, ::Zeebe::Client::GatewayProtocol::PublishMessageResponse
      #
      # Resolves a given incident. This simply marks the incident as resolved; most likely a call to
      # UpdateJobRetries or SetVariables will be necessary to actually resolve the
      # problem, following by this call.
      #
      # Errors:
      # NOT_FOUND:
      # - no incident with the given key exists
      rpc :ResolveIncident, ::Zeebe::Client::GatewayProtocol::ResolveIncidentRequest, ::Zeebe::Client::GatewayProtocol::ResolveIncidentResponse
      #
      # Updates all the variables of a particular scope (e.g. process instance, flow element instance)
      # from the given JSON document.
      #
      # Errors:
      # NOT_FOUND:
      # - no element with the given elementInstanceKey exists
      # INVALID_ARGUMENT:
      # - the given variables document is not a valid JSON document; valid documents are expected to
      # be JSON documents where the root node is an object.
      rpc :SetVariables, ::Zeebe::Client::GatewayProtocol::SetVariablesRequest, ::Zeebe::Client::GatewayProtocol::SetVariablesResponse
      #
      # Obtains the current topology of the cluster the gateway is part of.
      rpc :Topology, ::Zeebe::Client::GatewayProtocol::TopologyRequest, ::Zeebe::Client::GatewayProtocol::TopologyResponse
      #
      # Updates the number of retries a job has left. This is mostly useful for jobs that have run out of
      # retries, should the underlying problem be solved.
      #
      # Errors:
      # NOT_FOUND:
      # - no job exists with the given key
      #
      # INVALID_ARGUMENT:
      # - retries is not greater than 0
      rpc :UpdateJobRetries, ::Zeebe::Client::GatewayProtocol::UpdateJobRetriesRequest, ::Zeebe::Client::GatewayProtocol::UpdateJobRetriesResponse
      #
      # Modifies the process instance. This is done by activating and/or terminating specific elements of the instance.
      #
      # Errors:
      # NOT_FOUND:
      # - no process instance exists with the given key
      #
      # FAILED_PRECONDITION:
      # - trying to activate element inside of a multi-instance
      #
      # INVALID_ARGUMENT:
      # - activating or terminating unknown element
      # - ancestor of element for activation doesn't exist
      # - scope of variable is unknown
      rpc :ModifyProcessInstance, ::Zeebe::Client::GatewayProtocol::ModifyProcessInstanceRequest, ::Zeebe::Client::GatewayProtocol::ModifyProcessInstanceResponse
      #
      # Deletes a resource from the state. Once a resource has been deleted it cannot
      # be recovered. If the resource needs to be available again, a new deployment
      # of the resource is required.
      #
      # Deleting a process will cancel any running instances of this process
      # definition. New instances of a deleted process are created using
      # the lastest version that hasn't been deleted. Creating a new
      # process instance is impossible when all versions have been
      # deleted.
      #
      # Deleting a decision requirement definitions could cause incidents in process
      # instances referencing these decisions in a business rule task. A decision
      # will be evaluated with the latest version that hasn't been deleted. If all
      # versions of a decision have been deleted the evaluation is rejected.
      #
      # Errors:
      # NOT_FOUND:
      # - No resource exists with the given key
      #
      rpc :DeleteResource, ::Zeebe::Client::GatewayProtocol::DeleteResourceRequest, ::Zeebe::Client::GatewayProtocol::DeleteResourceResponse
      #
      # Broadcasts a signal.
      rpc :BroadcastSignal, ::Zeebe::Client::GatewayProtocol::BroadcastSignalRequest, ::Zeebe::Client::GatewayProtocol::BroadcastSignalResponse
    end

    Stub = Service.rpc_stub_class
  end
end
