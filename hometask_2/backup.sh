backup_dir=$2
source_dir=$1
primary_dir=backup_dir/$(date +%Y%m%d)
echo ${backup_dir} && echo ${source_dir}
echo ${backup_out_dir}
mkdir primary_dir
cd source_dir

for i in `find . -mtime -1`
do
echo $i
cp  -r $i primary_dir
done
