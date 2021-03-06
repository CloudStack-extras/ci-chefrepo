v2.1.0
------

* @vgirnet added SLES init script failsafe. closes #47
* @StFS added EL7 service names. closes #39 #41 #49
* @stevenolen remove installation of nfs-kernel-server for debian platform. closes #43
* ChefSpec fixups
  - Runner deprecated.
  - Generic chefspec 0.6.1 platform has no service providers (i.e. sysvinit) in Chef.
  - FreeBSD mapping broken chef/chef#2383.

v2.0.0
------

* @jessp01 added rquotad support, Issue #34
* @jessp01 added NFS4 support, Issue #35
* @dudyk Hash Rockets, Issue #36
* @soul-rebel, Issue #37
* @kjtanaka, notification timing, Issue #38
* rework issue #35 to be cross-platform and backwards compatible
* fix tests, verify behavior
* Update documentation

**Potentially Breaking Changes**

Support for some versions of Ubuntu support unverified.  Please help cookbook
maintainers by submitting [fauxhai](https://github.com/customink/fauxhai) stub data
for your preferred platforms.

v1.0.0
------

* Removed unused variables from provider
* NFS server template refactored into singular template to take advantage
  of added features like `nfs['v4']` and `nfs['threads']`
* @eric-tucker added Amazon support
* @mvollrath added Ubuntu 13.10 support
* @JonathanSerafini added FreeBSD support
* @gswallow added an `nfs['threads']` attribute
* @brint added array support for network LWRP parameter
* Tests
  - @stuart12 added debian to kitchen.ci platforms
  - Chefspec unit test coverage
  - BATS integration  tests
  - Rubocop linting

v0.5.0
------

* @CloCkWeRX - LWRP multi-line fix
* @walbenzi - toggle-able nfs protocol level 2, or 3
  - defer to default proto level, and default behavior according to installed kernel
  - Add attributes to README

* @ranxxerox & @reoring - Debian wheezy support added

v0.4.2
------

Remove nfs::undo only upon conflict in run_list

v0.4.1
------

Community site version does not match cb on github.

v0.4.0
------

Add SLES 11 support.
Handle non-existent exports.
Re-order service/template.
Added attributes to LWRP for anonymous user and group mapping.
Removed deprecated exports documentation.
Add test-kitchen skeleton

v0.3.1
------

Correct LWRP behavior for empty exports file via @bryanwb

Corrected lint warnings:

    FC043: Prefer new notification syntax: ./recipes/default.rb:40
    FC043: Prefer new notification syntax: ./recipes/server.rb:35

v0.3.0
------

@someara exports LWRP refactor

* **Breaking changes**
  - Deprecated ~nfs['exports']~ attribute
  - remove exports recipe hack
* refactored provider to execute in new run_context
* update notification timings on exports resources
* add service status to recipes
* dependency and integration with [line](http://ckbk.it/line) editing
  cookbook

v0.2.8
------

Debian family attribute correction

Use portmap service when using the portmap package

v0.2.7
------

Documentation corrections
* correct node.nfs.port references
* correct run_list symtax

v0.2.6
------

Force float in platform_version conditional

v0.2.5
------

Ubutntu service names

* Fix Ubuntu 11.10 edge-case reported by Andrea Campi
* Update test cases

v0.2.4
------

Attribute typo for Debian

* Correct typo in attributes
* Add attribute testing for config templates
* Add /etc/exports grep for better idempotency guard

v0.2.3
------

* Fix service action typo in nfs::undo

v0.2.2
------

* [annoyance] Add run once nfs::undo recipe to stop and remove all nfs components
* Correct export duplication check in LWRP
* Re-factor attributes, and introduce Ubuntu 12+ edge cases
* Add testing artefacts for Travis CI integration

v0.2.0
------

* Add nfs_export LWRP, thanks Michael Ivey from Riot Games for the contribution
* Update README documentation, and add CHANGELOG

v0.1.0
------

* Re-factor NFS cookbook
* Add edge cases for RHEL6, thanks Bryan Berry for reporting and testing
* Filter-branched into cookbook-nfs repo

v0.0.6
------

* Add NFS export support
* Update documentation
* First community site release

v0.0.4
------

* Initial version with RHEL/CentOS/Debian/Ubuntu support
* Thanks to Glenn Pratt for testing on Debian family distros
