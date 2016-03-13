### How to customise an OS install

NOOBS can be used as a recovery program, so if your OS gets corrupted, messed up or otherwise goes wrong, you can reinstall a clean version of the OS and start again.
On the other hand, starting again from scratch can be painful, especially if you can't remember how you set up your perfect OS environment.

NOOBS now includes support for `noobsconfig` (see http://github.com/procount/noobsconfig), so it can customise an OS installation by copying additional files over the top of the OS before it is booted for the first time. These files can typically be used to setup wifi, install course material, or inject run-once scripts that execute on boot to perform more complciated installations or customisations.
By keeping these customizations separate from the OS, it avoids having to rebuild a custom OS each time a new version of the OS is released.

