
# ![](https://github.com/rownbc.png?size=40)    Narragansett Boat Club Constitution and Bylaws
> Adopted on March 6<sup>th</sup>, 1838 by George C. Nightingale, William A. Greene, Rufus Waterman, Henry Lippitt, Sullivan Dorr, Jr., William C. Allen, and Charles Arnold.

[![Build Status][travis-image]][travis-url]
[![Uptime][uptime-image]][uptime-url]
[![Release][release-image]][release-url]
[![License][license-image]][release-url]

This repository tracks changes to the Narragansett Boat Club Constitution and Bylaws and allows for easy suggestion and amendment.

## Getting Started

### Requirements:  
 - Option 1: `docker` or equivalent container runtime  
 - Option 2: `vagrant`  
 - Option 3: `pandoc` and `TeXLive` (Unix) or `MiKTeX` (Windows)  

### Usage

#### Option 1: Using Container Runtime

```bash
# PROJECT_ROOT/.meta/build.sh

$TAG=random_unique_name
$VERSION=master
$URL=https://github.com/rownbc/constitution.git#${VERSION}:.meta

docker image build -t $TAG $URL && docker run --rm -it $TAG
```

#### Option 2: Using Vagrant

```bash
vagrant init rownbc/constitution
vagrant up
```

#### Option 3: Manually
```bash

```

<!-- Markdown link & img dfn's -->
[travis-image]: https://img.shields.io/travis/rownbc/constitution/master.svg?style=for-the-badge
[travis-url]: https://travis-ci.org/rownbc/constitution

[uptime-image]:https://img.shields.io/uptimerobot/ratio/m780142231-807e32f619e14f1a455fc78c.svg?style=for-the-badge
[uptime-url]:https://rownbc.org

[size-image]:https://img.shields.io/github/size/rownbc/constitution/build/phaser-craft.min.js.svg

[docker-image]:https://img.shields.io/docker/build/rownbc/constitution.svg

[release-image]:https://img.shields.io/github/release/rownbc/constitution.svg?style=for-the-badge
[release-url]:https://github.com/rownbc/constitution/releases/latest

[license-image]:https://img.shields.io/github/license/rownbc/constitution.svg?style=for-the-badge
[license-url]:https://rownbc.org

[wiki]: https://github.com/rownbc/constitution/wiki
