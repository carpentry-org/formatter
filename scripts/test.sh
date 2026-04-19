#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
carp -x tests/formatter_tests.carp
