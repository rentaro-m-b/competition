#!/bin/zsh
docker rm -f buildkite-agent
docker run -t -d \
  --name buildkite-agent \
  -e BUILDKITE_AGENT_TOKEN \
  -e HARBOR=$(minikube ip -p harbor):30002 \
  -e HARBOR_PASSWORD \
  buildkite/agent:4 start \
  --tags "queue=local"
