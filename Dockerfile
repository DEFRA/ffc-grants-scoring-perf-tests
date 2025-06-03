FROM defradigital/cdp-perf-test-docker:latest

WORKDIR /opt/perftest

COPY scenarios/ ./scenarios/
COPY entrypoint.sh .
COPY user.properties .

ENV S3_ENDPOINT=https://s3.eu-west-2.amazonaws.com
ENV TEST_SCENARIO=ffc-scoring-text-plan

ENTRYPOINT [ "./entrypoint.sh" ]
