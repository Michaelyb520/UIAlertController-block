# UIAlertController-block
UIAlertController 封装为工具类，通过 block，一句代码调用

## instructions （先导入 JHSysAlertUtil.h）

```objc
    /** 单按键 */
    [JHSysAlertUtil presentAlertViewWithTitle:@"标题" message:@"This a message" confirmTitle:@"确定" handler:^{
        NSLog(@"@@  This is just a log O(∩_∩)O~ @@");
    }];
    
    /** 双按键 */
    [JHSysAlertUtil presentAlertViewWithTitle:@"标题" message:@"This is message" cancelTitle:@"取消" defaultTitle:@"确认" distinct: YES cancel:^{
        NSLog(@"@@~ 取消 ~@@");
    } confirm:^{
        NSLog(@"@@~ 确认 ~@@");
    }];
    
    /** Alert  任意多个按键 返回选中的 buttonIndex 和 buttonTitle */
    [JHSysAlertUtil presentAlertWithTitle:@"标题" message:@"This is message" actionTitles:@[@"first", @"second", @"third"] preferredStyle:UIAlertControllerStyleActionSheet handler:^(NSUInteger buttonIndex, NSString *buttonTitle) {
        NSLog(@"@@~~ : %lu, %@", (unsigned long)buttonIndex, buttonTitle);
    }];

```
### 欢迎到 [我的博客](http://www.jianshu.com/p/f50c0b4b9b56) 中留言交流~