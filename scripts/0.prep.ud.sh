#wget https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-2837/ud-treebanks-v2.2.tgz
#wget https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-3424/ud-treebanks-v2.7.tgz
#wget https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-3687/ud-treebanks-v2.8.tgz
#wget https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-4611/ud-treebanks-v2.9.tgz
mkdir -p data
wget https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-4758/ud-treebanks-v2.10.tgz
tar -zxvf ud-treebanks-v2.10.tgz
mv ud-treebanks-v2.10 data
cp -r data/ud-treebanks-v2.10 data/ud-treebanks-v2.10.singleToken
python3 scripts/misc/cleanconl.py data/ud-treebanks-v2.10.singleToken/*/*conllu

