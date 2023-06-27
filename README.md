# SITCONCamp2023-special-bash-container

## 介紹
大致是使用 bashrc 將常用指令覆蓋掉與"將路徑上鎖"，也有使用黑名單去限制玩家用 `cat` 去取得某些題目腳本，若有心當然可以用技巧繞過，但這也許也是解法之一。
玩家的目標是前往控制室，並出現 `恭喜，你成功進到控制室了，趕快給關主看吧！` 字串
## 事前準備
### Docker
```
curl -fsSL https://get.docker.com | sh
```

## 開始遊戲
```
sudo ./run.sh
```
