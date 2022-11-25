FROM newrelic/infrastructure:latest

RUN --network=host \
  --cap-add=SYS_PTRACE \
  --privileged \
  --pid=host \
  --cgroupns=host  # required on cgroup v2 \
  -v "/:/host:ro" \
  -v "/var/run/docker.sock:/var/run/docker.sock"

ARG NRIA_LICENSE_KEY