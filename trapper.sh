#!/usr/bin/env bash

# shellcheck disable=SC2155
failure()
{
    local lineno=$1
#    local msg=$2

    local red=$(tput setaf 1)
    local reset=$(tput sgr0)
    local bold=$(tput bold)

#    printf "\n${bold}${red}Failed in ${0##*/} on line ${lineno} ${reset}\n"
    printf "\n%s%sFailed in %s on line %s%s\n" "${bold}" "${red}" "${0##*/}" "${lineno}" "${reset}"
    awk 'NR>L-4 && NR<L+4 { printf "    %-5d%s%s%4s%s%s\n", NR, bold, red, (NR==L?">>> ":""), reset, $0 }' L="${lineno}" bold="${bold}" red="${red}" reset="${reset}" "$0"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR
