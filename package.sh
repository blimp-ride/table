#
# Terminal tables
#

row-2() {
  _lval="${1}"
  _rval="${2}"
  _vrule='|'
  printf " %-35s %s %-35s\n" "${_lval}" "${_vrule}" "${_rval}"
}

row-2-colors() {
  _lval="${1}"
  _lcol="${2}"
  _rval="${3}"
  _rcol="${4}"
  _vrule='|'
  _lcol=${_lcol:-${COL_CLEAR}}
  _rcol=${_rcol:-${COL_CLEAR}}
  printf " ${_lcol}%-35s${COL_CLEAR} ${COL_GRAY}%s${COL_CLEAR} ${_rcol}%-35s${COL_CLEAR}\n" "${_lval}" "${_vrule}" "${_rval}"
}

hrule() {
  for _i in $(seq 1 80); do
    echo -n '-'
  done
  echo ''
}

hrule-2() {
  for _i in $(seq 1 37); do
    echo -n '-'
  done
  echo -n '+'
  for _i in $(seq 39 80); do
    echo -n '-'
  done
  echo ''
}

hrule-2-colors() {
  echo -en "${COL_GRAY}"
  for _i in $(seq 1 37); do
    echo -en "-"
  done
  echo -en "+"
  for _i in $(seq 39 80); do
    echo -en "-"
  done
  echo -e "${COL_CLEAR}"
}