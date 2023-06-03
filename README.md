# make your machine looklike busy

## Why
Sometimes you may need to make your machine appear busy to avoid unnecessary trouble, such as with Oracle's free machines.[Oracle Always_Free_Resources](https://docs.oracle.com/en-us/iaas/Content/FreeTier/freetier_topic-Always_Free_Resources.htm#compute__idleinstances)

## How to use
```shell
docker run -itd --name=acemarx-lookbusy --restart=always acemarx/lookbusy
```
or build by yourself:

```shell
git clone https://github.com/imacemarx/docker-lookbusy.git
docker build -t myimage . 
docker run -itd --restart=always myimage
```


