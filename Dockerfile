FROM otel/opentelemetry-collector-contrib:0.57.2

ADD ./otel-config.yaml /otel-config.yaml
ENV LOG_EXPORTER_LOG_LEVEL: "DEBUG"
ARG NEW_RELIC_API_KEY
EXPOSE 4317 
EXPOSE 4318
EXPOSE 13133
EXPOSE 8006
EXPOSE 8006/udp

CMD ["/otelcol-contrib", "--config=/otel-config.yaml", "${OTELCOL_ARGS}"]
