#!/bin/sh

if [ -z "${COMMIT}" ]; then
  echo "The COMMIT environment variable is NOT set, but is required."
fi

if [ -z "${VERSION}" ]; then
  echo "The VERSION environment variable is NOT set, but is required."
fi

git tag --annotate --message "Release ${VERSION}" ${VERSION} ${COMMIT}
git push origin ${VERSION}

docker build --tag xsystems/windhappers-proxy:${VERSION} "https://github.com/xsystems/windhappers-proxy.git#${COMMIT}"
docker tag xsystems/windhappers-proxy:${VERSION} xsystems/windhappers-proxy:latest
docker push xsystems/windhappers-proxy:${VERSION}
docker push xsystems/windhappers-proxy:latest
