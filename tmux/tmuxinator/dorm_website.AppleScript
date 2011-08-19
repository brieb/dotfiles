tell application "iTerm"
  activate

  set myterm to (make new terminal)

  set the name of the first window to "Dorm Website"

  tell myterm
    set number of columns to 100
    set number of rows to 50

    -- set up tabs and panes
    
      

      -- tab "editor"
      set session0 to (launch session "editor")

      tell session0
        
          -- tmux select-layout -t 'Dorm Website':1 'main-vertical'
          write text "cd /Applications/MAMP/htdocs/dorm_website && vim ."
          
            tell application "System Events" to keystroke "d" using command down
            write text "cd /Applications/MAMP/htdocs/dorm_website && "
          
        
      end tell
    

    
      set pre_session to (launch session "pre")
      tell pre_session
        -- run the pre stuff
        write text ""
      end tell
      terminate pre_session
    

  end tell

  -- select window 1
  select the first session of myterm
end tell
