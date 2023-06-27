
function runchall() {
    cd /home/challenge/初始位置 
}

function cat(){
    blacklist=("企鵝" "button" "鑰匙孔" "商店" "bashrc" "key")  # 黑名单列表

    for arg in "$@"; do
      for item in "${blacklist[@]}"; do
        if [[ "$arg" == *"$item"* ]]; then
          echo -e "\033[0;31m請勿嘗試觀看機關內容影響你的遊戲體驗\033[0m"
        fi
      done
    done
    /bin/cat "$@"

}

function cd() {
    if [[ $1 == *"已上鎖"* ]]; then
        echo "此資料夾已上鎖，無法進入"
    else
        builtin cd "$@" && echo -e `cat .title 2> /dev/null` 
    fi
}

function mv() {
    if [[ $1 == *"已上鎖"* ]]; then
        echo "此資料夾已上鎖，無法修改"
    else
        command mv "$@"
    fi
}

alias ls='ls --color=none'
