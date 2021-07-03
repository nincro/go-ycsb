rm -rf ./data 
rm -rf ./logs

for db in raw
do
    ./bench.sh load ${db}
    ./bench.sh run ${db}
done

./clear.sh
