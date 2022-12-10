-- https://github.com/glepnir/dashboard-nvim

-- text to ascii art generator
-- https://patorjk.com/software/taag

local present, dashboard = pcall(require, "dashboard")
if not present then
    return
end

dashboard.custom_footer = {
    "https://github.com/imkasen/dotfiles",
}

dashboard.custom_center = {
    {
        icon = "  ",
        desc = "Find file                           ",
        action = "Telescope find_files",
    },
    {
        icon = "  ",
        desc = "Recently files                      ",
        action = "Telescope oldfiles",
    },
}

dashboard.custom_header = {
    [[]],
    [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
    [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
    [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
    [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
    [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
    [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    [[]],
}
