#!/usr/bin/env python3

import sys
import os
from zimply import ZIMServer
from zimply.zimply import ZIMFile


class ZIMIndex(ZIMServer):
    def __init__(self, filename):
        self._zim_file = ZIMFile(filename, "utf-8")
        index_file = os.path.join(os.path.dirname(filename), "index.idx")
        self._bootstrap(index_file)

ZIMIndex(sys.argv[1])
