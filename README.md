# Setting multiple go versions

The purpose of this tiny project is to show how to set up multiple versions of the go programming language on the same computer.

## Prerequisites and constraints

1. This has been tested on MacOS 10.15.3. It _should_ also work on other *nix operating systems that have a bash shell. It has not been tested on Windows.
2. It assumes that you have ![installed at least one version of go](https://golang.org/doc/install). Of course, the whole point of the accompanying shell script is to allow you to switch between multiple versions of go; so you may want to install _two_ versions.

## How to use
1. For best results, include the contents of `setgo.sh` in your `.bash_profile` (or equivalent) file. Don't forget to `source` this profile file after you edit it. (See ![this Stackoverflow question](https://stackoverflow.com/questions/415403/whats-the-difference-between-bashrc-bash-profile-and-environment) for a differnce between different shell config files.)
2. After you install multiple versions of go lang, edit the variables (e.g. `go_11`) in the script to correctly point to your installed directories.
   a. Bonus: if you installed a version of go using homebrew on a MacOS, then `go_latest` _should_ work correctly as it's provided.
3. On a shell prompt, type `set $go_latest` (or `setgo $go_11`) to switch to the corresponding version of go.
4. That's it! Enjoy go programming in your favorite version.


## References
1. I have relied on ![Dave Cheney's advice](https://dave.cheney.net/2014/04/20/how-to-install-multiple-versions-of-go) heavily.
2. Shell programming is quirky. I used this ![Stackoverflow question](https://stackoverflow.com/questions/57951695/dereference-environment-variable-on-parameter-expansion-in-shell-script) to get ideas on how to write the `setgo` function.  
3. I used the `removeFromPath()` shell function in this ![Stackoverflow question](https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x).

##TODO List
1. It'd be really nice if one didn't have to prefix the variable name with a $. That is: `setgo go_latest` is much preferable to the current `setgo $go_latest`.
2. Some more robust error-checking -- e.g. when a bad variable name is given -- would be great.
