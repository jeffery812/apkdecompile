# author: tanggod
# date: 2013-11-16

home_path=${PWD}
output_path=$home_path

#check parameter
if [ $# == 1 ]; then
	tmp="data"
elif [ $# == 2 ]; then
	tmp=$2
else
	echo "Too many parameters \nUsage: sh "$0" apk_file_name relative_result_path"
	echo "The apk_file should be put in apk folder."
	exit 1
fi

# if the file not exists, then exit
apk_file="apk/"$1
if [ ! -f $apk_file ]; then
	echo "ERROR: file not exists["$apk_file"]"
	exit 1
fi

# if the folder not exists, then create it
if [ ! -d $tmp ]; then 
	mkdir -p $tmp
fi


tmp=$tmp"/"

#temp work path
name_full=${apk_file##*/}
name=${name_full%.*}
name_zip=$tmp$name".zip"

echo "1 ===========>copy file... ["$apk_file"]"
cp $apk_file $name_zip
rm -drf $tmp$name

echo "2 ===========>unzip file... ["$name_zip"]"
unzip $name_zip -d $tmp$name"/"
rm -f $name_zip

classes_dex=$tmp$name"/classes.dex"
#dex2jar location
dex2jar_path=$home_path"/bin/dex2jar-0.0.9.13/"
cp $classes_dex $dex2jar_path

rm -rdf $tmp$name

#cd $dex2jar_path
echo "3 ===========>dex2jar file.... [classes_dex]"
dex2jar_sh=$home_path"/bin/dex2jar-0.0.9.13/"
#sh $dex2jar_sh"dex2jar.sh" $dex2jar_sh"classes.dex"
sh $dex2jar_sh"d2j-dex2jar.sh" $dex2jar_sh"classes.dex"

apk_jar_file=$home_path"/classes-dex2jar.jar"
mv $apk_jar_file $output_path"/"$tmp$name"_classes-dex2jar.jar" 

#apk tool
echo "4 ===========>decompile resource file to ["$tmp$name"-res]"
apktool=$home_path"/bin/apktool/apktool"
#sh $apktool d $home_path"/"$apk_file $home_path"/"$tmp$name"-res"
res_file=$output_path"/"$tmp$name"-res"

# remove old res file
rm -rf $res_file
sh $apktool d $apk_file $res_file
echo "***********************************************************"
echo "***   decompile complete -- by tanggod@gmail.com    ***"
echo "***********************************************************"
