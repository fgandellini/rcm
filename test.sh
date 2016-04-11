#!/bin/sh

# rcup -vvvvv -d /tmp/cramtests-0Ug3Y6/mkrc-handle-spaces.t/.dotfiles -t - 'file with spaces'

# PREVIFS=$IFS
# IFS=":"

#FILES="$@"

shift 2

echo $#

ALLFILES=("*")
FILES=()
while [ $# -gt 0 ]
do
  FILES+=("$1")
  shift
done
FILES=("${FILES[@]:-${ALLFILES[@]}}")

c=0
for i in "${FILES[@]}"            # tra doppi apici
do echo "$((c+=1)): [$i]"   # Questa riga rimane invariata in tutti gli esempi.
                            # Visualizza gli argomenti.
done

# IFS=$PREVIFS