ABLoader
============

ABLoader is a view for your projects that you can use in place of your standard indicator when your app is processing a background thread. ABLoader works well in combination with [MBProgressHUD](https://github.com/jdg/MBProgressHUD).

Installing
----------

[CocoaPods](http://cocoapods.org/) is the recommended way for adding ABLoader to your project. Import `ABLoader` and `MBProgressHUD`.

    pod 'ABLoader', '~> 1.0'
    pod 'MBProgressHUD', '~> 0.9.1'
	

Usage
-----

Simply instantiate `ABLoaderView` with the desired dimension and image, and add it to MBProgressHUD..

    #import <ABLoader/ABLoaderView.h>
    #import <MBProgressHUD/MBProgressHUD.h>
    ...
    ABLoaderView *spinner = [[ABLoaderView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]spinnerSize:80.0f animDuration:0.8f];

then use ABLoaderView in combination with MBProgressHUD

	MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
	hud.square = NO;
	hud.mode = MBProgressHUDModeCustomView;
	hud.color=[UIColor clearColor];
	hud.customView = spinner;
	hud.backgroundColor=[UIColor colorWithWhite:0 alpha:0.6];


MIT License
----------------
The MIT License (MIT)

Copyright (c) 2015 IQUII Srl

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.





Acknowledgements
----------------

Made with ❤️ in [IQUII](http://www.iquii.com) by [Paolo Musolino](https://github.com/Codeido)