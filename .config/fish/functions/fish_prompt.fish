function fish_prompt -d "Write out the prompt"
    printf '%s%s%s » ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end
