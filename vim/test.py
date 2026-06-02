# E-Ink theme test file — open with: vim test.py
# This comment should be gray italic

import os
import sys
from typing import List, Optional

TODO_MESSAGE = "fix this later"  # TODO: string + comment on same line

class EinkDisplay:
    """Docstring: should be italic gray like a comment."""

    MAX_GREY_LEVELS = 16
    background = "#ffffff"

    def __init__(self, width: int, height: int):
        self.width = width
        self.height = height
        self.active = True

    def render(self, text: str, bold: bool = False) -> Optional[str]:
        if not self.active:
            return None
        # keywords (if/return/not) should be bold black
        result = text.upper() if bold else text
        return result

    @staticmethod
    def supported_modes() -> List[str]:
        return ["light", "dark", "grayscale"]


def main():
    display = EinkDisplay(width=1440, height=1080)
    modes = EinkDisplay.supported_modes()

    for mode in modes:
        print(f"Mode: {mode}")  # f-string

    value = 42 + 3.14
    flag = True
    nothing = None

    try:
        result = display.render("hello", bold=True)
    except AttributeError as e:
        print(f"Error: {e}", file=sys.stderr)


if __name__ == "__main__":
    main()
