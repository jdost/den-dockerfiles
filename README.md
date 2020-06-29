## Random development dockerfiles

Collection of dockerfiles used to generate base images for various languages being
worked on.  All images are based around personal preferences and are meant to be
used along with my [den](https://github.com/jdost/den/) CLI tool for working with
docker development environments.

### Purpose/basis

These are using Arch Linux (as that is my personal preference in distro) and run
zsh by default (as that is my preferred shell).  They attempt to just create a
fairly generic but general environment with scripted setup to try and normalize
the development images.  Iterating on additional shell commands or setup to make
development for the various image types is the main goal of them.

### `apps`/`misc`

These two folders hold more specific uses for containers.  These are
either meant to wrap general use applications (under apps), build
containers (that install build deps for OSS projects), or other random
things I want to run in isolation.  Most will have a mix of files
following a convention:

- `<name>.Dockerfile` - this is the image definition file
- `<name>.entrypoint` - a shell script that is used as the image's
  entrypoint
- `<name>.sh` - a helper script for the host to handle creating an image
  if it doesn't exist and then starting the image
