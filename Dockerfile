FROM  python:3.7-buster

RUN apt-get update -y \
 && apt-get install -y python-mpltoolkits.basemap \
                       libgeos-c1v5 \
                       libgeos-dev \
                       libgeos++-dev \
                       proj-bin \
                       libproj-dev\
                       vim

RUN pip3 install numpy==1.20.3 \
                 matplotlib==3.4.2 \
                 geopandas==0.9.0 \
                 scipy==1.7.0\
                 pyshp==2.1.3\
                 cartopy==0.19.0.post1\
                 pysplit==0.3.6


#RUN  apt-get install -y geos

RUN pip3 install https://github.com/matplotlib/basemap/archive/master.zip
RUN git clone https://github.com/mscross/pysplit.git

### cd pysplit/pysplit/docs/examples/
### apt-get install ftp
### ftp 
### open ftp.arl.noaa.gov
### close

