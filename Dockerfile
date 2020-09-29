FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN apt-get update && apt-get -q install unzip -y

RUN curl -sf -o resharper-cli.zip -L "https://download.jetbrains.com/resharper/dotUltimate.2020.2.3/JetBrains.ReSharper.CommandLineTools.2020.2.3.zip" \
    && mkdir -p /resharper \
    && unzip -q resharper-cli.zip -d /resharper \
    && rm resharper-cli.zip

ENTRYPOINT [ "/resharper/inspectcode.sh" ]
