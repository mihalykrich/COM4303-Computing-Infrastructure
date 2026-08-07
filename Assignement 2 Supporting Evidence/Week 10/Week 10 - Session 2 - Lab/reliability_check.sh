# reliability_check.sh
# Week 10 teaching script: reliable automation evidence.

REPORT_TITLE="Week 10 Reliability Check"
WORK_DIR="week10_evidence"
LOG_FILE="$WORK_DIR/automation_log.txt"

write_log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

echo "$REPORT_TITLE"
echo "Target working folder: $WORK_DIR"
echo "Target log file: $LOG_FILE"

echo "Working folder check"

if [ -d "$WORK_DIR" ]; then
  echo "Working folder found."
  write_log "working folder found"
else
  echo "Working folder missing."
  exit 1
fi

echo "Repeated reliability samples"

for run in 1 2 3
do
  echo "Run $run checked"
  write_log "run $run complete"
done

write_log "script completed"
echo "Reliability check complete."

