#!/bin/zsh
docker run -t -d \
  --name buildkite-agent \
  -e BUILDKITE_AGENT_TOKEN \
  buildkite/agent:4 start \
  --tags "queue=local"
