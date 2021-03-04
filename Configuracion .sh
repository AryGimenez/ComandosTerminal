Calibrating standard Xorg driver "xwayland-pointer:16"
	current calibration values: min_x=0, max_x=65535 and min_y=0, max_y=65535
	If these values are estimated wrong, either supply it manually with the --precalib option, or run the 'get_precalib.sh' script to automatically get it (through HAL).


--> Making the calibration permanent <--
  copy the policy below into '/etc/hal/fdi/policy/touchscreen.fdi'
<match key="info.product" contains="!!Name_Of_TouchScreen!!">
  <merge key="input.x11_options.minx" type="string">64482</merge>
  <merge key="input.x11_options.maxx" type="string">-219</merge>
  <merge key="input.x11_options.miny" type="string">1863</merge>
  <merge key="input.x11_options.maxy" type="string">65463</merge>
  <merge key="input.x11_options.swapxy" type="string">1</merge>
</match>

Change '!!Name_Of_TouchScreen!!' to your device's name in the config above.
^A












