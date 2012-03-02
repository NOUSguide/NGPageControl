<img src="http://office.nousguide.com/nouslogosmall.png" alt="NOUSguide Inc." title="NOUSguide Inc." title" style="display:block; margin: 10px auto 30px auto;" class="center">

# NGPageControl

[UIPageControl](https://developer.apple.com/library/ios/#documentation/UIKit/Reference/UIPageControl_Class/Reference/Reference.html) subclass to customize Page-Indicators with images

## Usage

``` objective-c
self.pageControl = [[NGPageControl alloc] initWithFrame:frane];
self.pageControl.imageForCurrentPageIndicator = [UIImage imageNamed:@"SelectedPageIndicator.png"];
self.pageControl.imageForDefaultPageIndicator = [UIImage imageNamed:@"UnselectedPageIndicator.png"];
```

## Credits

NGPageControl was created by [Philip Messlehner](https://github.com/messi/) (http://twitter.com/PhM) and was inspired from code from Thomas Heingärtner.

It's based on the source code from the Blogpost by [OmniDev](http://www.onidev.com/2009/12/02/customisable-uipagecontrol/).

## License

NGPageControl is available under the MIT license. See the LICENSE file for more info.
For usage without attribution contact [NOUSguide](mailto:info@nousguide.com).