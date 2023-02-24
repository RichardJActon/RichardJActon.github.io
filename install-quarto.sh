# quarto
QUARTO_VERSION=$(curl -s https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest | jq -r ".tag_name")
QUARTO_VERSION="${QUARTO_VERSION:1}"
QUARTO_FILE=$(printf "quarto-%s-linux-amd64.deb" $QUARTO_VERSION)
QUARTO_URL=$(printf "https://github.com/quarto-dev/quarto-cli/releases/download/v%s/%s" $QUARTO_VERSION $QUARTO_FILE)
# https://github.com/quarto-dev/quarto-cli/releases/download/v1.2.269/quarto-1.2.269-linux-amd64.deb
echo "Downloading .deb from: ${QUARTO_URL}"
curl -L -o $QUARTO_FILE $QUARTO_URL
DEBIAN_FRONTEND=noninteractive apt-get install -y -q -f ./$QUARTO_FILE
rm $QUARTO_FILE
