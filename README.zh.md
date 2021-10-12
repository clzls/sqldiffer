# sqldiffer

中文 | [English](README.md)

这是一个 SQLite 工具 `sqldiff` 的包装器，用于与 `git diff` 一起使用。

# 构建

这个仓库是一个 Nimble 包，由一些简单的 [Nim](https://nim-lang.org) 代码组成。

在开始之前，你需要设置好 Nim 开发环境（使用 `choosenim` 工具或手动安装 Nim 编译器），
安装好 SQLite 工具 `sqldiff` 并确认它们是否正常工作。

要安装它，只需并采用 Nimble 通常的编译流程如下：
```
nimble build
```

然后将编译结果安装到你的 `$(PATH)` 下，比如：
```
install sqldiffer /usr/local/bin
```

# 用法

要将它设置为 `git diff` 命令所使用的外部比较器，在将编译结果安装到你的 `$(PATH)`
之后，你或许还需要按照 `git` 的使用说明编辑全局（或特定项目）的 `gitconfig` 和
`gitattributes` 配置文件。

例如，在 `gitconfig` 中添加：
```ini
[diff sqldiffer]
command=sqldiffer
```

在 `gitattributes` 中添加：
```properties
*.db3 diff=sqldiffer
*.sqlite3 diff=sqldiffer
```