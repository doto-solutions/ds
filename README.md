# How to

## Installation

recreate (lab) env in conda:
```conda create --name lab --file requirements.txt```

install in existing env:
```conda install -n lab requirements.txt```

conda requirements.txt can be installed to poetry with:
```poetry add $( cat requirements.txt )```

with removed comments: 
```poetry add $(sed -e 's/#.*//' -e '/^$/ d' < requirements.txt)```
