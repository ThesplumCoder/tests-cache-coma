echo "Load test for normal [5rps/2min] is started."
$JMETER_HOME/bin/jmeter -n -t ./tests/load-testing-plan.jmx -l ./data/raw/5rps_2min-normal-load_test.jtl &>> ./runner/5rps-normal-load_test.out &
echo "Load test for normal [5rps/2min] is finished."
