$Game = Read-Host "Please enter game name (FH4, TR, CP, R6S)"
$Preset = Read-Host "Please enter preset name (low, medium, ultra)"
$Tmp = Read-Host "Get a stopwatch ready. Hit enter and start the timer. Stop the timer when you see the first scene of the benchmark."
Write-Output "Starting Measurement"
nvidia-smi --query-gpu=timestamp,temperature.gpu,temperature.memory,utilization.gpu,utilization.memory,utilization.encoder,utilization.decoder,utilization.jpeg,utilization.ofa,clocks.gr,clocks.sm,clocks.mem,clocks.video,power.draw,pstate --format=csv --loop=1 --filename="$Game"_"$Preset".csv

