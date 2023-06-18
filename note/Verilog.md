# Verilog
Verilogの記述に関するノート

## ビット演算子
ANDやORといった演算を行うには以下のように記述する．
```
let <= {
    ~btn_01,
    ~btn_02,
    btn_01 & btn_02,
    btn_01 | btn_02,
    btn_01 ^ btn_02,
    btn_01 ~^ btn_02
};
```

| 演算 | 記述 |
| ---- | ---- |
| AND | & |
| OR | \| |
| NOT | ~ |
| XOR | ^ |

### 例
ビット演算子を用いた例は[こちら](https://github.com/wakawa13/fpga-note/tree/main/projects/logic_gate)

動作はボード上の2つのボタンの状態をもとにLEDを点灯させるというシンプルなのもの．
ボタンが押された状態を1(High)として，そのときにLEDを点灯する．

ボード上には6つのLEDがあるため
1. ボタン1の状態
1. ボタン2の状態
1. 消灯
1. ボタン1とボタン2のAND
1. ボタン1とボタン2のOR
1. ボタン1とボタン2のXOR
となっている．
