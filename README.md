# Zeebe Ruby Client

[![Build Status](https://travis-ci.org/zeebe-io/zeebe-client-ruby.svg?branch=master)](https://travis-ci.org/zeebe-io/zeebe-client-ruby/)

[Zeebe](https://zeebe.io) client containing a simple wrapper for the GRPC protocol used by Zeebe.

## General Usage

Install the gem:

    gem install zeebe-client

Run a Zeebe instance locally:

```sh
docker run -it --rm -p 26500:26500 camunda/zeebe:0.14.0
```

And then try the available [demo script](examples/demo.rb).

See the [changelog](CHANGELOG.md) before upgrading.

## Development

The `gen-grpc.sh` script can be used to generate Ruby code for the Zeebe proto.

To retrieve the latest GRPC proto from the Zeebe repository:

```
wget -O proto/gateway.proto https://raw.githubusercontent.com/zeebe-io/zeebe/develop/gateway-protocol/src/main/proto/gateway.proto
```

## Status

This is a community extension for [Zeebe](https://zeebe.io) that will be maintained on a best effort basis.

## License

zeebe-client-ruby is licensed under the Apache License, Version 2.0. See LICENSE for more information.
