# ~*~ coding: utf8 ~*~

import sys
import code
import signal
import logging

from . import __version__

__doc__ = """
Cookies Python SDK Tool (v%s)
-----------------------------
This tool helps start up local proxy services which help Cookies Engineering team members while they're working on
stuff that requires secure API access. To use the tool, simply invoke from Docker.
""" % ".".join(map(str, __version__))

LOG_LEVEL = logging.INFO

logger = None
logging_client = None
interactive = False

root_logger = logging.getLogger('')
root_logger.setLevel(LOG_LEVEL)


def go_interactive():
    """Start an interactive Python session."""

    global interactive
    interactive = True
    code.interact(
        banner=__doc__,
        local=locals()
    )

def cancel_handler(sig, frame):
    """Handle process cancellation."""

    logger.info("Ctrl+C pressed. Entering interactive session. Press again to quit.")
    if not interactive:
        go_interactive()
    else:
        logger.info("Ctrl+C pressed twice. Quitting API proxy.")
        sys.exit(0)


def run():
    """CLI entrypoint proxy."""

    try:
        signal.signal(signal.SIGINT, cancel_handler)
        go_interactive()

    except RuntimeError:
        logger.error("Runtime error: halting for debug session.")
        import pdb; pdb.set_trace()


if __name__ == "__main__": run()
