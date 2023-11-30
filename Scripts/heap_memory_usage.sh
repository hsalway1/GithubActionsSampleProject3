printf "%15s %15s %15s %15s\n" "" "Heap Size" "Heap Alloc" "Heap Free"
printf "%15s %15s %15s %15s\n" "" "---------" "----------" "---------"
adb shell dumpsys meminfo com.example.githubactionssampleproject3 | grep "Native Heap" | head -1 | awk '{printf "%15s %15d %15d %15d\n", "Native Heap", $8, $9, $10}'
adb shell dumpsys meminfo com.example.githubactionssampleproject3 | grep "Dalvik Heap" | head -1 | awk '{printf "%15s %15d %15d %15d\n", "Dalvik Heap", $8, $9, $10}'
adb shell dumpsys meminfo com.example.githubactionssampleproject3 | grep "TOTAL" | head -1 | awk '{printf "%15s %15d %15d %15d\n", "TOTAL", $7, $8, $9}'
