for x in `ls`;
do
	exp=`cat $x|grep "nourlcn.ownlinux.net"|wc -l`
	if [ $exp -ge 1 ];
	then
		echo $x
		#echo $exp
	fi	
done
