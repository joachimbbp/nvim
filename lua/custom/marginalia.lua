--_: Colors
Orange = '#FAA00F'
Hotpink = '#FA2070'
Green = '#3CA653'

return {
  -- Highlight todo, notes, etc in comments
  {
    --ICON SOURCE: https://nerdfonts.ytyng.com/
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      signs = true,
      keywords = {
        --FIX:
        FIX = { icon = ' ', color = 'error', alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' } },
        --TODO:
        TODO = { icon = ' ', color = 'info' },
        --HACK:
        HACK = { icon = ' ', color = 'warning' },
        --WARN:
        WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
        --PERF:
        PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
        --NOTE:
        NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
        --TEST:
        TEST = { icon = '⏲ ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
        --SECTION:
        SECTION = { icon = '󰚟', color = Green, alt = { '_' } },
        --LLM: used to tag LLM generated code
        LLM = { icon = '', color = 'hint', alt = { 'LLM START', 'GPT', 'ROBOT', 'ROBOT START', 'LLM BELOW' } },
        --LLMEND: used to show the end of an LLM generated code block
        LLMEND = { icon = '', color = 'hint', alt = { 'LLM END', 'GPT END', 'ROBOT END', 'LLM ABOVE' } },
        --HUMAN: for edits in LLM code blocks
        HUMAN = { icon = '󱓨', color = 'hint', alt = { 'HUMAN EDIT' } },
        --QUESTION:
        QUESTION = { icon = '󱍊', color = Hotpink, alt = { 'WONDER', 'Q', 'HMM', 'THOUGHT' } },
        --LOCAL: used to tag local imports or other modules created by me (like zools)
        LOCAL = { icon = '', color = Hotpink, alt = { 'HOUSE', 'MY SUBMODULE', 'MY GIT SUBMODULE' } },
        --SUBMODULE: used to indicate a submodule created by someone other than me
        SUBMODULE = { icon = '󰄛', color = Hotpink, alt = { 'GIT SUBMODULE', 'DEPENDENCY' } },
        --DEPRECATED: code that works but you need to replace with something better
        DEPRECATED = { icon = '', color = 'error', alt = { 'DEAD', 'KILL' } },
        --NICE:
        WIZARD = { icon = '󱑷', color = 'info', alt = { 'NICE', 'GOOD', 'NIFTY' } },
        --CLEAN:
        CLEAN = { icon = '󰃢', color = 'warning', alt = { 'TIDY' } },
        --EXORCISE:
        EXORCISE = { icon = '', color = Orange, alt = { 'CURSED', 'EXORCISM NEEDED', 'HORROR', 'GRIMOIRE' } },
        --SOURCE: https://brainder.org/tag/nifti/ (for example). This is used for citing sources
        SOURCE = { icon = '', color = Green, alt = {} },
        --INSTRUCTIONS: for the user to do!
        INSTRUCTIONS = { icon = '󱓷', color = 'test', alt = {} },
        --WIP: Work in Progress
        WIP = { icon = '', color = 'warning', alt = { 'WORK IN PROGRESS' } },
      },
    },
  },
}
