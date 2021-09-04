#!/bin/bash
# ~*~ coding: utf8 -*~

__doc__ = ("""
    Sources Tool
    ------------

    Simple source file renderer which supports multiline replacements. See `.github/tpl/README.md` for a syntax example, and see the main
    `Makefile` at https://github.com/CookiesCo/echo for invocation samples.
""")

import subprocess


def read_file_version(file):
    """Read a version from a file.
    
    Args:
        file: Name of the file to read. Assumed to. be relative to this script.

    Returns:
        Version string from the file."""

    with open(file, "r") as handle:
        return handle.read().split("\n")[0]

def capture_output(command):
    """Run the provided command as a shell command, and capture the output, and return it.
    
    Args:
        command: Command to run.

    Returns:
        Captured output from the command."""

    return subprocess.run(command, stdout=subprocess.PIPE).stdout.decode('utf-8')

def apply_substitutions(contents, subs):
    """Apply the provided set of `subs` to `contents`, replacing any occurrences of each KEY with each VALUE.

    Args:
        contents: Contents of the file which we should replace within.
        subs: Map of substitutions to apply.
    
    Returns:
        Rendered file result after applying the substitutions."""

    return contents.format(**subs)

def render(file, template, subs):
    """Render the provided file with the provided substitutions. This will write back out to the provided file.

    Args:
        file: Name of the file to read, render, and then write.
        template: Template file which we should read in.
        subs: Substitutions to apply to the file. """

    with open(template, "r") as handle:
        contents = handle.read()
        with open(file, "w") as handle:
            handle.truncate()
            handle.write(apply_substitutions(contents, subs))

def render_sources():
    """Utility script to render sources from Makefile variables."""

    context = {
        "VERSION": read_file_version(".version"),
        "BAZEL_VERSION": read_file_version(".bazelversion"),
        "MAKE_STATUS": capture_output(["make", "status", "COLORS=no"]),
        "MAKE_HELP": capture_output(["make", "help", "COLORS=no"])
    }

    render("README.md", ".github/tpl/README.md", context)

if __name__ == "__main__": render_sources()
