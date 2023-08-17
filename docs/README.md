# dots documentation

## Introduction 

Welcome to Refcell's dots.
This is a collection of various dotfiles, configs, and other tooling.

These docs walk through a bunch of configuration steps.
You do not need to read it like a book, instead, simply skip
to whichever chapter/tool is of use to you.

## Table of Contents

- [`Fonts`](./Fonts.md)
- 

## Quickstart

> **Warning**
>
> The commands below will override any local configuration files that
> conflict with the files in this repository. Please double check that
> you do not have conflicts that you don't want to override. We run an
> additional step to make sure any potentially conflicting files are
> backed up, but you should still manually verify to understand what
> this code is doing.

_Note: See [backup](#-backup) for more info on where backup files are copied._

Clone this repository: `git clone https://github.com/refcell/dots`.

Enter into the repo directory: `cd dots`.

Copy the configuration files to your local files: `make install`.


## Backup

The [Makefile](./Makefile) `install` target run in the [Quickstart](#-quickstart)
backs up all potentially overriden files to a directory in `~/.dotbackup/`.

To recover these files, run `make recover`, which will copy files from the
`~/.dotbackup` location to their original locations.

