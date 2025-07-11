# Vim 配置文件使用说明

欢迎使用我的 Vim 配置！该配置支持 Python、C/C++、JavaScript/TypeScript 等语言的智能缩进和自动补全，集成了 coc.nvim 补全系统和实用插件。

---

## 功能亮点

* 现代化主题（Gruvbox）
* 智能缩进（针对多语言自动设置）
* 代码补全和语法提示（通过 coc.nvim 支持多语言 LSP）
* 文件树浏览（NERDTree）
* 轻量状态栏（lightline.vim）
* 多语言语法高亮（vim-polyglot）

---

## 使用步骤

### 1. 安装 Vim 插件管理器（vim-plug）

如果你还没有安装 [vim-plug](https://github.com/junegunn/vim-plug)，请先运行：

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

---

### 2. 下载配置文件

你可以使用以下命令下载配置文件到你的家目录：

```bash
curl -o ~/.vimrc https://raw.githubusercontent.com/你的GitHub用户名/你的仓库名/main/.vimrc
```

（将上面链接替换成你自己的 `.vimrc` 仓库 raw 链接）

---

### 3. 安装插件

打开终端，运行：

```bash
vim +'PlugInstall' +qall
```

这将自动安装 `.vimrc` 中配置的所有插件。

---

### 4. 安装 coc.nvim 语言服务器插件

打开 Vim，执行：

```vim
:CocInstall coc-pyright coc-clangd coc-tsserver coc-snippets coc-json
```

这会安装 Python、C/C++、TypeScript 的语言补全和代码片段支持。

---

### 5. 使用说明

* 按 `F2` 键打开或关闭文件树（NERDTree）
* 编辑代码时自动补全提示会弹出
* 支持多语言缩进，自动适配制表符和空格
* 通过 `gd` 快捷键跳转到定义，`K` 查看文档悬浮窗

---

## 常见问题

* 如果提示找不到 `gruvbox` 主题，请确认插件安装成功
* coc.nvim 弹出错误时可执行 `:CocRestart` 重启
* 插件安装过程中网络异常可尝试代理或换源

---

## 联系我

欢迎反馈问题和建议！

GitHub: github.com/antzw

