# zuiux
www.zuiux.com


=======

Dependences:

## Ruby 2.2
##### 1. how to upgrade your ruby to 2.2 ?

```
rvm get head
rvm install 2.2
```

NOTES:   
1.1 执行 `rvm get head` 的时候，需要 pgp 添加签名， 类似代码 `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 `    
1.2 执行 `rvm install 2.2`, 如果遇到有关 gmp lib版本冲突的问题，请先执行 `brew upgrade gmp` 升级 gmp.


## Rails 4.2

##### 2. how to install rails 4.2 with ruby 2.2 ?

```
gem install rails -v 4.2
rvm install bundle 
```
NOTES:  
2.1 项目根目录有个.ruby-version 文件，此文件用于统一项目 ruby 版本，每当进入项目目录的时候，rvm会自动帮我们切换成对应 ruby 版本，这样方便管理多 ruby 环境的问题。
