cd /c/adb

#Give the names of users you want to follow in below array
array=( "gary" "dave" "diplo3000" "camilacabello" )

for element in ${array[@]}
do

#For finding and clicking the add friend icon
sleep 2
./adb shell input tap 584 122

#For clicking on text area
sleep 2
./adb shell input tap 287 206


echo Add friend $element
sleep 3
./adb shell input text $element
sleep 2
./adb shell input tap 566 422
echo 566 422 tap add
sleep 3
./adb shell input tap 640 207
done

echo "Finished"
