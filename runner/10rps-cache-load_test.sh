echo "Load test for cache [10rps/2min] is started."
$JMETER_HOME/bin/jmeter -n -t ./tests/load-testing-plan.jmx -l ./data/raw/10rps_2min-cache-load_test.jtl &>> ./runner/10rps-cache-load_test.out
echo "Load test for cache [10rps/2min] is finished."
