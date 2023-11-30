#!/bin/bash

memory_info="$(adb shell dumpsys meminfo com.example.githubactionssampleproject3)"

printf "%15s %15s %15s %15s\n" "" "Heap Size" "Heap Alloc" "Heap Free"
printf "%15s %15s %15s %15s\n" "" "---------" "----------" "---------"
echo "$memory_info" | grep "Native Heap" | head -1 | awk '{printf "%15s %15d %15d %15d\n", "Native Heap", $8, $9, $10}'
echo "$memory_info" | grep "Dalvik Heap" | head -1 | awk '{printf "%15s %15d %15d %15d\n", "Dalvik Heap", $8, $9, $10}'
echo "$memory_info" | grep "TOTAL" | head -1 | awk '{printf "%15s %15d %15d %15d\n", "TOTAL", $7, $8, $9}'
