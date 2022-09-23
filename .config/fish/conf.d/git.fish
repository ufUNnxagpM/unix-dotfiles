function edit_commit
    if not [ (count $argv) -eq 1 ]
        echo "usage: edit_commit <commit sha>"
        echo "change 'pick' to 'edit' for the commit, commit changes, and continue rebase"
        return
    end
    git rebase -i "$argv[1]^"
end
