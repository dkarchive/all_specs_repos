# all_specs_repos

Get a list of CocoaPods GitHub repos :coffee:

[![](http://i.giphy.com/xA1PKCt00IDew.gif)](http://gph.is/XMHGvi)

I needed a list of [CocoaPods](https://cocoapods.org/) repos for a [fun project](https://github.com/dkhamsing/cocoapods-readme) and [@orta](https://github.com/orta) told me to check out the [Specs](https://github.com/CocoaPods/Specs) repo.

## Usage

```shell
$ git clone https://github.com/dkhamsing/all_specs_repos.git
Cloning into 'all_specs_repos'...
remote: Counting objects: 15, done.
remote: Compressing objects: 100% (10/10), done.
remote: Total 15 (delta 3), reused 10 (delta 2), pack-reused 0
Unpacking objects: 100% (15/15), done.
Checking connectivity... done.

$ cd all_specs_repos/lib

$ git clone --depth=1 https://github.com/CocoaPods/Specs.git
Cloning into 'Specs'...
remote: Counting objects: 157162, done.
remote: Compressing objects: 100% (105599/105599), done.
remote: Total 157162 (delta 30148), reused 153462 (delta 30032), pack-reused
Receiving objects: 100% (157162/157162), 25.46 MiB | 2.16 MiB/s, done.
Resolving deltas: 100% (30148/30148), done.
Checking connectivity... done.
Checking out files: 100% (70736/70736), done.

$ ruby all_specs_repos.rb
..........................
# ...
Processed CocoaPods Specs in 51s
Found 15451 repos
Wrote to all-specs-repos.txt

$ cat all-specs-repos.txt
https://github.com/tanglimei/120301
https://github.com/tanglimei/1210
https://github.com/tanglimei/DeveCocoa
https://github.com/tanglimei/1BAIDUSDKSYDemo
https://github.com/AgileBits/onepassword-app-extension
# ...
```

## Contact

- [github.com/dkhamsing](https://github.com/dkhamsing)
- [twitter.com/dkhamsing](https://twitter.com/dkhamsing)

## License

This project is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
