## 核心提示
修复 greetlab.cli 中 --name 为空或仅含空白字符时未正确退出的问题。

## 智能体改动
在 cli.py 的 main 函数中添加检查：若 name 为空或仅含空白字符，则调用 sys.exit(2)。

## 人工验证
运行 pytest tests/test_cli.py -v，测试通过，返回码正确为 2。
