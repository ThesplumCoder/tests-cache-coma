echo "Load test for cache [5rps/2min] is started."
$JMETER_HOME/bin/jmeter -n -t ./tests/load-testing-plan.jmx -l ./data/raw/5rps_2min-cache-load_test.jtl &>> ./runner/5rps-cache-load_test.out &
echo "Load test for cache [5rps/2min] is finished."
