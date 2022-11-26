#!/bin/bash
# SPDX-FileCopyrightText: 2022 Shuichiro Fujisawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}

res=0

### I/O TEST ###  analysis test
out=$(echo 54 | ./analysis)
[ "${out}" = "54
=[(2, '^1'), (3, '^3')]" ] || ng ${LINENO}
　
[ "$res" = 0 ] && echo OK
  exit $res
