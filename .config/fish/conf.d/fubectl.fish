alias _kctl_tty="kubectl"
alias _inline_fzf="fzf --multi --ansi -i -1 --height=50% --reverse -0 --header-lines=1 --inline-info --border"
alias _inline_fzf_nh="fzf --multi --ansi -i -1 --height=50% --reverse -0 --inline-info --border"

# [k] like g for git but 233% as effective!
alias k="kubectl"

# [kw] watch resources of any KIND in current namespace, usage: kw KIND[,KIND2,...]
alias kw="watch kubectl get"

# [ka] get all pods from current namespace
alias ka="kubectl get pods"

# [kall] get all pods from cluster
alias kall="kubectl get pods --all-namespaces"

# [kwa] watch all pods in current namespace
alias kwa="watch kubectl get pods"

# [kwall] watch all pods in cluster
alias kwall="watch kubectl get pods --all-namespaces"


function kcns
  set -l ns $argv[1]
  if [ -z "$ns" ]
    set ns (kubectl get ns | _inline_fzf | awk '{print $1}')
  end
  [ -z "$ns" ] && printf "kcns: no namespace selected/found.\nUsage: kcns [NAMESPACE]\n" && return
  kubectl config set-context (kubectl config current-context) --namespace=$ns
end
