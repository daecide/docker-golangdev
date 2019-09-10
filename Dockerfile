FROM golang:1.12

RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils 2>&1 \
    && apt-get -y install git procps lsb-release \
    && go get -u -v \
        github.com/mdempsky/gocode \
        github.com/uudashr/gopkgs/cmd/gopkgs \
        github.com/ramya-rao-a/go-outline \
        github.com/acroca/go-symbols \
        github.com/godoctor/godoctor \
        golang.org/x/tools/cmd/guru \
        golang.org/x/tools/cmd/gorename \
        github.com/rogpeppe/godef \
        github.com/zmb3/gogetdoc \
        github.com/haya14busa/goplay/cmd/goplay \
        github.com/sqs/goreturns \
        github.com/josharian/impl \
        github.com/davidrjenni/reftools/cmd/fillstruct \
        github.com/fatih/gomodifytags \
        github.com/cweill/gotests/... \
        golang.org/x/tools/cmd/goimports \
        golang.org/x/lint/golint \
        golang.org/x/tools/cmd/gopls \
        github.com/alecthomas/gometalinter \
        honnef.co/go/tools/... \
        github.com/golangci/golangci-lint/cmd/golangci-lint \
        github.com/mgechev/revive \
        github.com/derekparker/delve/cmd/dlv 2>&1 \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*