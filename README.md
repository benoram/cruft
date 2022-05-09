# Docker benoram/cruft

A container for running cruft anywhere that supports Docker Linux containers. Updated monthly.

ex:

```sh
docker run --rm -v $(pwd):/data benoram/cruft 
```

## Prereqs

A docker environment on your local machine. For Mac users, Docker Desktop or Rancher Desktop work. For Rancher desktop, you will need to be running the "dockerd (moby)" container runtime.

## Simplify execution with an alias

Add an alias to your .bashrc or .zshrc file. This will allow you to run wget without needing to remember the full docker command.

When using this alias, your current directory and relative subdirectories will be mounted to allow file access.

Add the following line to your .bashrc or .zshrc file

```sh
alias cruft="docker run --rm -v $(pwd):/data benoram/cruft"
```
# cruft
