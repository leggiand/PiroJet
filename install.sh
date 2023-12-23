installPath="$HOME/.local/lib/PiroJet"
./build.sh
mkdir $installPath
mkdir $installPath/workspaces
mkdir $installPath/bin
cp ./build/PiroJet $installPath/bin
cp ./source/default.json $installPath/default.json
wrapper="$(cat source/pj.template)"
echo "#!/bin/sh" > source/pj
echo "installPath=$installPath" >> source/pj
echo $wrapper >> source/pj
cp ./source/pj "$HOME/.local/bin/pj" 
rm ./source/pj
 


