nohup $JMETER_HOME/bin/jmeter -n -t ./tests/endurance-testing-plan.jmx -l ./data/raw/1rps_24h-cache-endurance_test.jtl &>> ./runner/endurance-cache.out &
disown
echo "Endurance test for cache [1rps/24h] is started."
