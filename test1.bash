#!/bin/bash
# SPDX-FileCopyrightText: 2022 Shuichiro Fujisawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}

res=0

### I/O TEST ###
out=$(seq 1000 | ./prime | ./judge)
[ "${out}" = 0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res