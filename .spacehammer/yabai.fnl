;; function yabai(args, completion)
;; 	local yabai_output = ""
;; 	local yabai_error = ""
;; 	-- Runs in background very fast
;; 	local yabai_task = hs.task.new("/usr/local/bin/yabai",nil, function(task, stdout, stderr)
;; 		--print("stdout:"..stdout, "stderr:"..stderr)
;; 		if stdout ~= nil then yabai_output = yabai_output..stdout end
;; 		if stderr ~= nil then yabai_error = yabai_error..stderr end
;; 		return true
;; 	end, args)
;; 	if type(completion) == "function" then
;; 		yabai_task:setCallback(function() completion(yabai_output, yabai_error) end)
;; 	end
;; 	yabai_task:start()
;; end

(fn yabai [args completion]
  (let [yabai_output ""
        yabai_error ""
        yabai_task (hs.task.new
                    "/opt/homebrew/bin/yabai"
                    nil
                    (fn [task, stdout, stderr]
                      (if (!= stdout nil)
                          (.. yabai_output stdout)
                          (!= stderr nil)
                          (.. yabai_error stderr)
                          true))
                    args)]
    (if (= (type completion) "function")
        (yabai_task : (setCallback
                       (fn [] (completion yabai_output, yabai_error)))))
    (yabai_task : start)))
