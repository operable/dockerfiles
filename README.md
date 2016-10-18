Dockerfiles
===========

These are some common Dockerfiles we use at Operable for various things.

```
docker build -t operable/alpine-base:0.1 . -f Dockerfile.alpine-base
docker build -t operable/elixir:1.3.1 . -f Dockerfile.elixir
```

# Versioning Conventions

For things like `alpine-base`, we can just bump versions like normal.

For things like the `elixir`, `go`, and whatever other language-based
images we make, the first part of the tag will be the language's own
version (e.g. `1.3.1` for Elixir), and we'll add a suffix for any
material changes we make to the image apart from that; perhaps
`1.3.1-r0` was our original image, but then we changed our base image
to add additional utilities, so we then build a `1.3.1-r1` image to
reflect this.

# Makefile

The makefile has build targets for making images. You'll want to tweak
the release tag before you build. We'll make this nicer soon.
