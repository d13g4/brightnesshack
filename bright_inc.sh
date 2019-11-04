var=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
echo "$((var + 5))" > /sys/class/backlight/amdgpu_bl0/brightness
