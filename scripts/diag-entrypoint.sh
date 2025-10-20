#!/bin/bash
# SPDX-FileCopyrightText: 2025 Demerzel Solutions Limited
# SPDX-License-Identifier: LGPL-3.0-only

set -e
set -euo pipefail

exec dottrace start \
  --framework=NetCore \
  --save-to=/nethermind/diag/nethermind_$(date +%F_%H-%M-%S).dtt \
  --profiling-type=timeline \
  --service-output=on \
  --propagate-exit-code \
  -- ./nethermind "$@"
