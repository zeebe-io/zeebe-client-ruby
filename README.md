# Zeebe Ruby Client

[![Build Status](https://travis-ci.org/cmur2/zb-ruby-client.svg?branch=master)](https://travis-ci.org/cmur2/zb-ruby-client)

[Zeebe](https://zeebe.io) client containing a simple wrapper for the GRPC protocol used by Zeebe.

## General Usage

Install the gem:

    gem install zeebe-client

Run a Zeebe instance locally:

```sh
docker run -it --rm -p 26500:26500 camunda/zeebe:0.13.1
```

And then try the available [demo script](examples/demo.rb).

See the [changelog](CHANGELOG.md) before upgrading.

## Development

The `gen-grpc.sh` script can be used to generate Ruby code for the Zeebe proto.
