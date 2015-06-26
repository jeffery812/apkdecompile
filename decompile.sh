# author: tanggod
# date: 2013-11-16

#check parameter
if [ $# == 1 ]; then
	tmp="data"
elif [ $# == 2 ]; then
	tmp=$2
else
	echo "too many parameters \nUsage: sh "$0" apk_file_name result_path"
	exit 1
fi

# if the file not exists, then exit
apk_file=$1
if [ ! -f $apk_file ]; then
	echo "ERROR: file not exists["$apk_file"]"
	exit 1
fi

# if the folder not exists, then create it
if [ ! -d $tmp ]; then 
	mkdir -p $tmp
fi

home_path=${PWD}
tmp=$tmp"/"

#temp work path
name_full=${apk_file##*/}
name=${name_full%.*}
name_zip=$tmp$name".zip"

echo "1 ===========>copy file... ["$1"]"
cp $1 $name_zip
rm -drf $tmp$name

echo "2 ===========>unzip file... ["$name_zip"]"
unzip $name_zip -d $tmp$name"/"
rm -f $name_zip

classes_dex=$tmp$name"/classes.dex"
#dex2jar location
dex2jar_path="/users/tanggod/android/apkdecompile/dex2jar-0.0.9.13/"
cp $classes_dex $dex2jar_path

rm -rdf $tmp$name

#cd $dex2jar_path
echo "3 ===========>dex2jar file.... [classes_dex]"
dex2jar_sh="/users/tanggod/android/apkdecompile/dex2jar-0.0.9.13/"
#sh $dex2jar_sh"dex2jar.sh" $dex2jar_sh"classes.dex"
sh $dex2jar_sh"d2j-dex2jar.sh" $dex2jar_sh"classes.dex"

apk_jar_file=$home_path"/classes-dex2jar.jar"
cp -f $apk_jar_file $home_path"/"$tmp$name"_classes-dex2jar.jar" 

#apk tool
echo "4 ===========>uncompile resource file to ["$tmp$name"-res]"
apktool_path="/Users/tanggod/Android/apkdecompile/apktool/"
apktool=$apktool_path"apktool"
#sh $apktool d $home_path"/"$apk_file $home_path"/"$tmp$name"-res"
sh $apktool d $apk_file $home_path"/"$tmp$name"-res"
echo "***********************************************************"
echo "***   uncompile successfully -- by tanggod@gmail.com    ***"
echo "***********************************************************"
