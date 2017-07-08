
git submodule init
git submodule update

# copy configs into the right folder
cd Firmware/Marlin/Marlin
git reset --hard
git pull origin printers/default

rm -rf Configuration.h
rm -rf Configuration_adv.h
cp my_configuration_files/Anet-A8/Configuration.h .
cp my_configuration_files/Anet-A8/Configuration_adv.h .
cd ..

# compile and upload
pio run -t upload

