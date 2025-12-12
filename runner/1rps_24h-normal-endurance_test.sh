nohup $JMETER_HOME/bin/jmeter -n -t ./tests/endurance-testing-plan.jmx -l ./data/raw/1rps_24h-normal-endurance_test.jtl &>> ./runner/endurance-normal.out &
disown
echo "Endurance test for normal [1rps/24h] is started."
