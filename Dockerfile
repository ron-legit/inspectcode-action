FROM alpine:3.11

RUN apk --update-cache add curl

RUN curl -sf -o resharper-cli.tar.gz -L "https://download-cf.jetbrains.com/resharper/ReSharperUltimate.2019.3.4/JetBrains.ReSharper.CommandLineTools.Unix.2019.3.4.tar.gz" \
    && tar -xf resharper-cli.tar.gz -C /resharper \
    && rm resharper-cli.tar.gz

ENTRYPOINT [ "/resharper/inspectcode.sh" ]