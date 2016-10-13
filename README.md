# docker-murmur
Simple Docker container for running murmurd, the Mumble voice chat service

To build:

    docker build .

To run:

    docker run -d -e 'MURMURPASSWORD=desiredpassword' -p 64738:64738 --name murmur <IMAGEID>
