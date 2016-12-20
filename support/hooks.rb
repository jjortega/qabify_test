Before do
  $driver.start_driver
  $driver.find_element(:id, "com.android.packageinstaller:id/permission_allow_button").click #grant permissions
end

After do
  $driver.driver_quit
end