# Windhappers Proxy Service

Docker service that acts as a proxy for other Windhappers services.


## Build the Image

Run the [build.sh](build.sh) script.


## Release the Image

1. Make sure you are allowed to push to the `xsystems` repository on Docker Hub e.g. by doing: `docker login`
2. Set the `COMMIT` environment variable to the Git commit hash of the commit that needs to be released.
3. Set the `VERSION` environment variable to the version that needs to be released.
4. Run the [release.sh](release.sh) script.
