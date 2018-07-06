FROM java:8-jdk as builder
COPY HelloIppon.java /
RUN javac HelloIppon.java

FROM java:8-jre
COPY --from=builder /HelloIppon .
ENTRYPOINT ["java", "HelloIppon"]
