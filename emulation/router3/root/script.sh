rm -rf MulticastRouting/
cp -rf /hosthome/Desktop/pim/ MulticastRouting/
cd MulticastRouting
#pip-3.2 install --index-url=https://pypi.python.org/simple/ -r requirements.txt

python3 Run.py -stop
python3 Run.py -start
python3 Run.py -t R3 10.5.5.100
python3 Run.py -aiigmp eth0
python3 Run.py -aiigmp eth1
python3 Run.py -aisr eth0
python3 Run.py -aisr eth1
python3 Run.py -v

