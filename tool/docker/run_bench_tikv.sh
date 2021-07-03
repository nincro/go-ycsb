rm -rf ./data 
rm -rf ./logs

for db in tikv
do
    ./bench.sh load ${db}
    ./bench.sh run ${db}
done

./clear.sh
