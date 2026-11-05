LOG_FILE="$HOME/linux-tools/system_usage.log"

echo "---Provera: $(date) ---" >> "$LOG_FILE"
echo "CPU/Memorija status: " >> "$LOG_FILE"
free -h | awk 'NR==2 {print "Iskorisceni RAM: " $3 " od " $2}' >> "$LOG_FILE"
df -h / | awk 'NR==2 {print "Iskoriscenost diska: " $5}' >> "$LOG_FILE"
echo "------------------------------------------------" >> "$LOG_FILE"

echo "Zapis uspesno dodat u $LOG_FILE"
