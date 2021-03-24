#! eqela ss-0.21
#
# This file is part of simple Hello Word
# Copyright (c) 2021 Eqela
# All rights reserverd.
#

lib sling-tools:0.45.0
import sling.tools.compiler
SlingCompilerTool.forWeb5ApplicationDirectory("app").executeScript(args)
