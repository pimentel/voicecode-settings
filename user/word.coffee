# Scope.register
#   name: 'word-active'
#   application: 'com.microsoft.Word'
#
# runVisualBasic = (whichScript, application = "Microsoft Word") ->
#   text = "tell application \"#{application}\" to run VB macro macro name \"#{whichScript}\""
#   Actions.applescript text
#
# Package.settings =
#   'moveMode': 'line'
#
# Package.command 'add-citation',
#   spoken: 'add citation'
#   enabled: true
#   description: "add citation using Zotero. Requires Zotero Microsoft Word plug-in."
#   tags: ["microsoft word", "user"]
#   scope: ["word-active"]
#   action: ->
#     runVisualBasic 'ZoteroInsertCitation'
# Package.command 'change-move-mode-page',
#   spoken: 'page mode'
#   enabled: true
#   description: '"jump" by page in Microsoft Word'
#   tags: ['microsoft word', 'user']
#   scope: ['word-active']
#   action: ->
#     Package.settings.moveMode = 'page'
# Package.command 'change-move-mode-line',
#   spoken: 'line mode'
#   enabled: true
#   description: '"jump" by page in Microsoft Word'
#   tags: ['microsoft word']
#   scope: ['word-active']
#   action: ->
#     Package.settings.moveMode = 'line'
# Package.command 'toggle-line-numbering',
#   spoken: 'toggle numbers'
#   enabled: true
#   description: 'Toggle line numbering. NOTE: makes line numbering continuous which may change your page formatting.'
#   tags: ['microsoft word']
#   scope: ['word-active']
#   action: ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set pageSetup to page setup of active document
#     	set lineNumbering to line numbering of pageSetup
#     	set isActive to active line of lineNumbering
#     	set active line of lineNumbering to not isActive
#     	set restart mode of lineNumbering to restart continuous
#     end tell
#     """
#     @applescript cmd
# Package.implement
#   scope: 'word-active'
# ,
#   'editor:move-to-line-number': (input) ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set textObject to text object of selection
#     	navigate textObject position absolute count #{input} to goto a #{Package.settings.moveMode} item
#     end tell
#     """
#     @applescript cmd
#   'editor:move-to-line-number-and-way-right': (input) ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set textObject to text object of selection
#     	navigate textObject position absolute count #{input} to goto a line item
#     end tell
#     """
#     @applescript cmd
#     @do 'cursor:way-right'
#   'cursor:way-down': ->
#     runVisualBasic 'EndOfDocument'
#   'cursor:way-up': ->
#     runVisualBasic 'StartOfDocument'
#   'common:zoom-in': ->
#     runVisualBasic 'ViewZoomIn'
#   'common:zoom-out': ->
#     runVisualBasic 'ViewZoomOut'
#   'common:indent-right': ->
#     runVisualBasic 'IncreaseIndent'
#   'common:indent-left': ->
#     runVisualBasic 'DecreaseIndent'
#   'delete:lines': ({first, last} = {}) ->
#     @do 'cursor:way-right'
#     @do 'selection:way-left'
#     @do 'common:delete'
#   'selection:next-occurrence': (input) ->
#     cmd = """
#     tell application "Microsoft Word"
#     	tell find object of selection
#     		execute find find text "#{input.value}" with match forward
#     	end tell
#     end tell
#     """
#     @applescript cmd
#   'selection:extend-to-next-occurrence': (input) ->
#     cmd = """
#     tell application "Microsoft Word"
#       set extend mode of selection to true
#     	tell find object of selection
#     		execute find find text "#{input.value}" with match forward
#     	end tell
#       set extend mode of selection to false
#     end tell
#     """
#     @applescript cmd
#
#   'selection:previous-occurrence': (input) ->
#     cmd = """
#     tell application "Microsoft Word"
#     	tell find object of selection
#     		execute find find text "#{input.value}" without match forward
#     	end tell
#     end tell
#     """
#     @applescript cmd
#   'selection:extend-to-previous-occurrence': (input) ->
#     cmd = """
#     tell application "Microsoft Word"
#       set extend mode of selection to true
#     	tell find object of selection
#     		execute find find text "#{input.value}" without match forward
#     	end tell
#       set extend mode of selection to false
#     end tell
#     """
#     @applescript cmd
#
#   'clipboard:paste-from-history': ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set textObject to text object of selection
#     	paste and format textObject type format plain text
#     end tell
#     """
#     @applescript cmd
#
#   'selection:next-word': (input) ->
#     if not input?
#       cmd = """
#       tell application "Microsoft Word"
#         -- clear the selection
#       	set selection start of selection to selection end of selection
#       end tell
#       """
#       @applescript cmd
#       @key 'right', 'option shift'
#
#     else
#       input = input - 1
#       cmd = """
#       tell application "Microsoft Word"
#         -- clear the selection
#       	set selection start of selection to selection end of selection
#         set textObject to text object of selection
#       	set newPosition to move start of range textObject by a word item count #{input}
#         set theResult to expand selection by a word item
#       end tell
#       """
#       @applescript cmd
#   'selection:previous-word': (input) ->
#     if not input?
#       cmd = """
#       tell application "Microsoft Word"
#         -- clear the selection
#       	set selection end of selection to selection start of selection
#       end tell
#       """
#       @applescript cmd
#       @key 'left', 'option shift'
#     else
#       input = -input
#       cmd = """
#       tell application "Microsoft Word"
#         -- clear the selection
#         set selection end of selection to selection start of selection
#         set textObject to text object of selection
#       	set newPosition to move end of range textObject by a word item count #{input}
#         set theResult to expand selection by a word item
#       end tell
#       """
#       @applescript cmd
#
#   'selection:way-up': ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set selection start of selection to 0
#     end tell
#     """
#     @applescript cmd
#   'selection:way-down': ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set storyRange to get story range of (document of active window) story type main text story
#     	set selection end of selection to end of content of storyRange
#     end tell
#     """
#     @applescript cmd
#
#   'selection:next-selection-occurrence': ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set selectionType to selection type of selection
#     	if selectionType is selection normal then
#     		tell find object of selection
#     			execute find find text content of selection with match forward
#     		end tell
#     	end if
#     end tell
#     """
#     @applescript cmd
#   'selection:previous-selection-occurrence': ->
#     cmd = """
#     tell application "Microsoft Word"
#     	set selectionType to selection type of selection
#     	if selectionType is selection normal then
#     		tell find object of selection
#     			execute find find text content of selection without match forward
#     		end tell
#     	end if
#     end tell
#     """
#     @applescript cmd
