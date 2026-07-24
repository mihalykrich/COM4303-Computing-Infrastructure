# system_snapshot.sh
# Week 9 teaching script: produce a short system snapshot.

REPORT_TITLE="System Snapshot"
CHECK_DIR="week9_evidence"

print_section() {
  echo "------------------------------"
  echo "$1"
  echo "------------------------------"
}

print_section "$REPORT_TITLE"

print_section "Current user"
whoami

print_section "Current directory"
pwd

print_section "Date and time"
date

print_section "Evidence directory check"

if [ -d "$CHECK_DIR" ]; then
  echo "Evidence directory found."
else
  echo "Evidence directory not found."
fi

print_section "Repeated samples"

for sample in 1 2 3
do
  echo "Sample $sample captured"
  date
done

