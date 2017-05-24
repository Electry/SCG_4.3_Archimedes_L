使用说明
http://work.lenovo.com/kb/pages/viewpage.action?pageId=15302720


Version 2.1.1

2014年5月16日

Feedback
修复添加大图片内存溢出问题，现在能支持任意尺寸不崩溃，最多试到10000*10000
代码精简重构
去掉了两个jar包调用javabase64-1.3.1.jar, ledroid-nac-1.0.0.jar 混淆时注意去掉对这两个jar的指定。
About

检查更新使用SUS SDK, 从而支持SUS 定制更新。
ActionBar支持自定义
允许隐藏Feedback 和 检查更新
添加对cta， background data的支持
修改部分bug


**************
Version 2.1.2

About:
1. 修复部分预定义attr 被覆盖的问题, IdeaFriend
2. 支持Feedback长按, 跳转到我的反馈列表中
3. 禁止SUS检查更新时，显示网络请求失败的Toast, 主题中心
4. 添加UpdateManager.checkWithSystemProperties, 在cmcc, row, cta下禁止检查更新。主题中心
5. 支持显示网址

Feedback:
1.Feedback增加自定义ActionBar样式图标从其他应用传入
2.反馈IM界面第一条信息从下往上显示
3.提交反馈问题，然后提示要完善联系方式。填好联系方式后，应该直接提交，另外这个时候将“提交”改为“保存” 。
4.我的反馈界面，图片文字一起显示
5.我的反馈页面，图片增加时间
6.修正输入框文字遮挡问题
7.为意见反馈独立客户端集成添加相关代码


**************
Version 2.1.3

About:
1.修复CMCC弹出对话框，确认键与取消键位置错误问题

**************
Version 2.1.4

Feedback:
1.增加手机横屏，注意：需要重新配置下AndroidManifest.xml
2.调整输入框高度，使其横屏时也无需滑动界面
3.修正“匿名提交”、“完善个人信息”位置反了问题
4.修正联系方式输入校验方式
5.增加所有应用集成Feedback的联系方式共享操作

Version 2.1.5
*************
Feedback:
1. 为提交反馈界面的图片选择 增加选中的背景图
2. 增加选择相同图片后的提示语（英语）
3. 修复AOTA-1418选取图片概率性程序错误问题
4. android4.0反馈输入框、弹框亮主题兼容
5. 兼容非VIBE UI的ListView选中背景色
6. strings.xml资源名前统一加上fb_
7. 兼容非VIBEUI的ActionBar问题
 
About:
1. 4.0 对话框问题
2. 4.0 CheckBox 错位问题。
3. 部分NewAPI 向下兼容
4. 添加DebugDialog, 点击图标两下，点击copyright两下，弹出调试信息对话框。
5. 省流量更新，支持Pad版本。

**************
Version 2.2.1
About:

1. 支持阿拉伯语
2. 支持PAD版界面
3. 修复Bug，隐藏调试对话框。

Feedback:

1. 增加通知中心短摁进入需要选择模块类型
2. PAD版横竖屏支持
3. 增加进入联系方式界面自动获取手机号码
4. 修复ImageDialog的getBitmap()为空未判断问题
5. 多应用间共享我的反馈数据缓存
6. 反馈信息、添加图片有一个不为空时，增加点击返回键时给予提示
7. 兼容4.4系统下获取图片路径错误的问题
8. feedback反馈类型增加多语言支持
9. 修复切换语言时，“具体应用”的显示问题
**************

Version 2.2.2

About:
1.添加 爱沙尼亚语 values-et，芬兰语 values-fi, 立陶宛 values-lt, 拉脱维亚 values-lv 语言

Feedback:
1. 统一各系统版本打开相册方式
2. 修复一键反馈具体应用中的部分应用名称与实际不符
3. 添加我的反馈请求加载失败提示语
4. 修复IM界面显示的部分问题


**************

Version 2.2.2
1. 统一各系统版本打开相册方式
2. 修复一键反馈具体应用中的部分应用名称与实际不符 
3. 处理当反馈信息过多时，键盘弹起遮挡问题
4. 修改IM界面输入框为空时提交按钮不可点击
5. 添加我的反馈请求加载失败提示语




**************

Version 2.3
1. fb增加删除当前用户自己的提交反馈或者回复
2. 提交反馈后更新MyFeedbackActivity
3. 新评论告知服务器
4. 图片下载、通知图标大小调整
5. 提交反馈增加响应失败错误处理，注意API提交反馈的也做了相应处理，需要测试
6. 替换IM界面加载默认图、失败图
7. 统一ProgressDialog不带取消键只在点BACK键时可取消
8. 解决意见反馈CVAA问题
9. 解决提交反馈当出现返回网页错误还提示反馈成功问题 
10.调整IM界面为整体可滑动，并且从上往下显示
11.解决提交反馈时失败时图片被清，再提交错误问题
12.IM界面发送增加“正在发送...”和发送失败重发两种状态机制
13.解决PAD数据共享问题。
14.修改IM界面横竖屏切换时不走onCreate方法，记得AndroidManifest.xml文件的FeedbackIMActivity增加属性android:configChanges="orientation|keyboardHidden|screenSize"

About:

1. 加入省流量更新
2. about_feedback.debug文件存在时， 打开debug模式。
3. CVAA 测试通过
4. 语言翻译完成, LQA测试正在进行。


**************

Version 2.3.1
Feedback：
1. 片编辑大图片填充屏幕，小图片原样显示

Version 2.3.2
Feedback：
1. 修正IM界面图片概率性不显示问题

About:
1. 支持A588t小屏幕设备
2. 埃及语下，Email显示问题。

Bug List:
http://work.lenovo.com/issue/browse/APOLLO-443
http://work.lenovo.com/issue/browse/APOLLO-405
http://work.lenovo.com/issue/browse/XTWOROW-409

Version 2.3.3
此版本主要添加对键盘操作的支持， 以及海外版部分语言显示问题的修正。
请涉及A588t, 海外版的应用， 更新About & Feedback 版本, 谢谢。

Feedback：
1. 修复PAD横屏切换竖屏时IM界面显示不整齐问题 
2. 提交反馈增加内部版本号
3. 解决PAD我的反馈请求交易时切换界面又切回我的反馈后崩溃问题
4. 适配A588t手机实体键盘选中效果
5. 修复繁体字翻译问题

Bug List:
http://work.lenovo.com/issue/browse/APPCOMMON-212
https://work.lenovo.com/issue/browse/LQATEST-5669
https://work.lenovo.com/issue/browse/LQATEST-5668
https://work.lenovo.com/issue/browse/LQATEST-5667

About:
1. 支持键盘操作， 主要针对A588t.
2. 希伯来语文字方向修正， 改为从右到左。
3. 联系方式改为双栏ListView， 避免某些语言下标题过长造成的显示问题。

Bug List：
https://work.lenovo.com/issue/browse/XTWOROW-1574
https://work.lenovo.com/issue/browse/XTWOROW-1043
https://work.lenovo.com/issue/browse/SPARK-1013
https://work.lenovo.com/issue/browse/LQATEST-5603
https://work.lenovo.com/issue/browse/LELAUNCHER-3639
https://work.lenovo.com/issue/browse/FRIESIAN-4087

Version 2.3.4

About:
1.由于版本紧急，未进行LQA测试，建议仅更新国内版本
2.原来作为CTA版本特殊控制的字段：ro.lenovo.cta删除,现使用联想体验计划标志控制后台流量:persist.backgrounddata.enable
3.当未开启"联想体验计划"时,进入About界面会有流量弹框提示,是否允许后台检查更新
4.用户主动点击事件,将不会有弹框提示

Feedback：
1. 增加反馈服务协议。
切记AndroidManifest.xml文件要增加WebTipActivity的配置，已更新至Confluence https://work.lenovo.com/kb/pages/viewpage.action?pageId=34803426 
亦可直接复制下面配置
<activity
            android:name="com.lenovo.feedback.feedback.WebTipActivity"
            android:configChanges="orientation|keyboardHidden|screenSize"
            android:theme="@style/FeedbackTheme.Light"
            android:windowSoftInputMode="adjustPan" >
</activity>
2. 完善反馈界面代码
3. 修改流量提示为只判断CMCC，并补充更新模块类型、我的反馈删除、访问服务协议流量提示

Bug List：
https://work.lenovo.com/issue/browse/LQATEST-5705
https://work.lenovo.com/issue/browse/LQATEST-5708

***************
Version 2.3.5

About:

1.此版本通过了LQA测试,增加了语句"是否允许后台检查更新?"的繁体以及英文翻译 

Version 2.3.6

About:
1.coverity资源溢出问题
2.检查更新时,状态栏 notification显示"后台更新"字符串修改
3.添加海外五国翻译
4.添加论坛,微信两种联系方式
5.在cmcc情况下,进入about界面,不弹出"是否允许后台检查更新"
6.阿拉伯语言下,自定义状态栏一体化

Bug List：
https://work.lenovo.com/issue/browse/FRIESIAN-7354
https://work.lenovo.com/issue/browse/FRIESIAN-5061

Feedback：
1、纠正繁体字翻译问题“網絡”应改为“網路” 
2、修复文件管家monkey测试空指针问题

Bug List：
https://work.lenovo.com/issue/browse/KEYGUARD-651
https://work.lenovo.com/issue/browse/PEGASUS-4442
