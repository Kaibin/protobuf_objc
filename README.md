# protobuf_objc
Protocol Buffers 是一种轻便高效的结构化数据存储格式，可以用于结构化数据串行化，可用于通讯协议、数据存储等领域的语言无关、平台无关、可扩展的序列化结构数据格式。

这里演示的是如何将protobuf与objc进行集成。

<ul>
<li>下载安装：git clone https://github.com/google/protobuf </li>
<li>生成protoc编译器，运行： protobuf/objectivec/DevTools/full_mac_build.sh，会在src目录下生成protoc二进制的可执行文件，这就是protoc编译器，用于将.proto文件生成objc代码</li>
<li>接下来可以将protobuf/objectivec目录下的.h和.m源文件连同ProtocolBuffers_iOS.xcodeproj拷贝到我们的工程目录下，这里我们放在了framework的目录下，并将ProtocolBuffers_iOS.xcodeproj拖拽到Xcode目录中，最后将framework目录添加到Xcode的Header Search Paths里面。</li>
<li>新建一个叫person.proto的Message文件，放在Xcode的protobuf/src目录下</li>
<li>为person.proto文件生成objectivec源文件，这里我写了一个叫make.sh的脚本，会在protobuf/target目录下生成objectivec目标文件
 <pre><code>
    #!/bin/bash
    SRC_DIR=./src
    DST_DIR=./target
    PROTOC_DIR=~/Documents/DevTools/protobuf/src
    $PROTOC_DIR/protoc --proto_path=$SRC_DIR --objc_out=$DST_DIR $SRC_DIR/person.proto
</code></pre>
</li>
<li>最后就可以#import "Person.pbobjc.h"头文件，对生成的Person对象进行Serialization和Unserialization操作</li>
</ul>
