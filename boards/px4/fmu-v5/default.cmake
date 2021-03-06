
px4_add_board(
	PLATFORM nuttx
	VENDOR px4
	MODEL fmu-v5
	LABEL default
	TOOLCHAIN arm-none-eabi
	ARCHITECTURE cortex-m7
	ROMFSROOT px4fmu_common
	IO px4_io-v2_default
	UAVCAN_INTERFACES 2
	UAVCAN_TIMER_OVERRIDE 6
	SERIAL_PORTS
		GPS1:/dev/ttyS0
		TEL1:/dev/ttyS1
		TEL2:/dev/ttyS2
		TEL4:/dev/ttyS3
	DRIVERS
		adc/ads1115
		adc/board_adc # CPU inside
		anemometer/sfm3000 # SFM 3000
		barometer # all available barometer drivers
		#barometer/ms5611 # pixhawk 4 inside
		batt_smbus
		camera_capture
		camera_trigger
		differential_pressure # all available differential pressure drivers
		distance_sensor # all available distance sensor drivers
		dshot
		gps
		heater
		#imu # all available imu drivers
		imu/analog_devices/adis16448
		imu/bosch/bmi055 # pixhawk 4 inside
		imu/invensense/icm20602
		imu/invensense/icm20689 # pixhawk 4 inside
		imu/invensense/icm20948 # required for ak09916 mag
		imu/jy901b
		irlock
		lights # all available light drivers
		lights/rgbled_pwm # pixhawk 4 inside
		magnetometer # all available magnetometer drivers
		#magnetometer/isentek/ist8310 # pixhawk 4 inside
		optical_flow # all available optical flow drivers
		osd
		pca9685
		pca9685_pwm_out
		power_monitor/ina226
		#protocol_splitter
		pwm_input # CPU inside default disact
		pwm_out_sim # CPU inside mixer default disact
		pwm_out # CPU inside default disact
		px4io
		rc_input # rc radio
		roboclaw # dc brush motor controller with encoder
		smart_battery/batmon
		rpm # revolution per minute indicator
		safety_button # check for the param CBRK_IO_SAFETY_KEY == 22027
		telemetry # all available telemetry drivers
		tone_alarm # buzzer check for CBRK_BUZZER_KEY == 782097 ? act
		uavcan
		uwb
	MODULES
		airspeed_selector
		attitude_estimator_q
		battery_status
		camera_feedback
		commander
		dataman
		data_record
		ekf2
		esc_battery
		events
		flight_mode_manager
		fw_att_control
		fw_pos_control_l1
		gyro_calibration
		gyro_fft
		land_detector
		landing_target_estimator
		load_mon
		local_position_estimator
		logger
		mavlink
		mc_att_control
		mc_hover_thrust_estimator
		mc_pos_control
		mc_rate_control
		#micrortps_bridge
		navigator
		rc_update
		rover_pos_control
		sensors
		sih
		temperature_compensation
		uuv_att_control
		uuv_pos_control
		vmount
		vtol_att_control
	SYSTEMCMDS
		bl_update
		dmesg
		dumpfile
		esc_calib
		gpio
		hardfault_log
		i2cdetect
		led_control
		mft
		mixer
		motor_ramp
		motor_test
		mtd
		nshterm
		param
		perf
		pwm
		reboot
		reflect
		sd_bench
		serial_test
		system_time
		top
		topic_listener
		tune_control
		uorb
		usb_connected
		ver
		work_queue
	EXAMPLES
		anemometer_test
		data_record_test
		fake_gps
		vision_test
		ychiot_test
		gps_test
		#fake_imu
		#fake_magnetometer
		#fixedwing_control # Tutorial code from https://px4.io/dev/example_fixedwing_control
		#hello
		#hwtest # Hardware test
		#matlab_csv_serial
		#px4_mavlink_debug # Tutorial code from http://dev.px4.io/en/debug/debug_values.html
		#px4_simple_app # Tutorial code from http://dev.px4.io/en/apps/hello_sky.html
		#rover_steering_control # Rover example app
		#uuv_example_app
		#work_item
	)
