# Windhappers Proxy Service

Docker service that acts as a proxy for other Windhappers services.


## Build the Image

Run the [build.sh](build.sh) script.


## Run

When running a container of this image you **must** set the environment variable `WINDHAPPERS_PROXY_DOMAIN` to the desired domain that resolves to your machine.


## Release the Image

1. Make sure you are allowed to push to the `xsystems` repository on Docker Hub e.g. by doing: `docker login`
2. Set the `VERSION` environment variable to the version that needs to be released.
3. Optionally, set the `COMMIT` environment variable to the hash of the Git commit that needs to be released. It defaults to the latest commit.
4. Run [release.sh](release.sh).

