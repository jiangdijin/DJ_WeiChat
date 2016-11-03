#pragma mark -----------2016.11.3-------------


1.创建项目是的"include Unit Tests" 和 "include UI Tests"是用于单元测试的
1.1.单元测试的常用代码
XCTAssertNil(a1, format...) //为空判断，a1为空时通过，反之不通过；

XCTAssertNotNil(a1, format…) //不为空判断，a1不为空时通过，反之不通过；

XCTAssert(expression, format...)//当expression求值为TRUE时通过；

XCTAssertTrue(expression, format...)//当expression求值为TRUE时通过；

XCTAssertFalse(expression, format...)//当expression求值为False时通过；

XCTAssertEqualObjects(a1, a2, format...)//判断相等，[a1 isEqual:a2]值为TRUE时通过，其中一个不为空时，不通过；

XCTAssertNotEqualObjects(a1, a2, format...)//判断不等，[a1 isEqual:a2]值为False时通过，

XCTAssertEqual(a1, a2, format...)//判断相等（当a1和a2是 C语言标量、结构体或联合体时使用,NSString也可以）；

XCTAssertNotEqual(a1, a2, format...)//判断不等（当a1和a2是 C语言标量、结构体或联合体时使用）；

XCTAssertEqualWithAccuracy(a1, a2, accuracy, format...)//判断相等，（double或float类型）提供一个误差范围，当在误差范围（+/-accuracy）以内相等时通过测试；

XCTAssertNotEqualWithAccuracy(a1, a2, accuracy, format...) //判断不等，（double或float类型）提供一个误差范围，当在误差范围以内不等时通过测试；

XCTAssertThrows(expression, format...)//异常测试，当expression发生异常时通过；反之不通过；

XCTAssertThrowsSpecific(expression, specificException, format...) //异常测试，当expression发生specificException异常时通过；反之发生其他异常或不发生异常均不通过；

XCTAssertThrowsSpecificNamed(expression, specificException, exception_name, format...)//异常测试，当expression发生具体异常、具体异常名称的异常时通过测试，反之不通过；

XCTAssertNoThrow(expression, format…)//异常测试，当expression没有发生异常时通过测试；

XCTAssertNoThrowSpecific(expression, specificException, format...)//异常测试，当expression没有发生具体异常、具体异常名称的异常时通过测试，反之不通过；

XCTAssertNoThrowSpecificNamed(expression, specificException, exception_name, format...)//异常测试，当expression没有发生具体异常、具体异常名称的异常时通过测试，反之不通过




2.版本控制使用gitHub

2.1  github 离线时也可以进行版本控制

2.2github使用步骤:
>1.在github官网上注册账号并且创建一个仓库  /*git clone https://github.com/jiangdijin/DJ_WeiChat   */
>2.在本地创建一个本地仓库    使用"git init"命令
>3.本地的公钥与官网上的SSH Key关联
>3.1 在终端运行代码   "ssh-keygen -t rsa -C "xyf1992@sohu.com""  然后直接回车到底,提示输入密码不要输入,这时会在个人下面出现.ssh文件,.ssh文件下面会有2个文件   id_rsa私钥:自己保存好,不能泄露    id_rsa.pub公钥:用于关联github
>3.2 在github网站上找到ssh key 添加key:就是id_rsa.pub文件里的内容
>4.将远程版本库克隆到本地    "git clone https://github.com/jiangdijin/DJ_WeiChat"代码
>5.接下来就可以在这个文件下开始项目了
>5.1















