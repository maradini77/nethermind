#!/bin/bash
# SPDX-FileCopyrightText: 2025 Demerzel Solutions Limited
# SPDX-License-Identifier: LGPL-3.0-only

set -e
set -euo pipefail

exec dottrace run \
  --save-to=/nethermind/diag/dottrace \
  --profiling-type=timeline \
  --service-output=on \
  -- ./nethermind "$@"
