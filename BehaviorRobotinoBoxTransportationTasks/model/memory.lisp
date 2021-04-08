;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SCENARIO MEMORY
 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Robot
(tcl-kb-update 
  :key '(is-a name) 
  :value `(
            (is-a robot)
            (name 1)
            (velocity-travelling ((0 500)(-60 60)))
            (velocity-path-navigation ((0 500)(-60 60)))
            (velocity-following  ((0 1200)(-200 200)))
            (current-room room-1)
            (current-symbolic-position nil)
            (goalid 0)
            (default-nav-map "navigation-map")
            (default-map "localization-map")))

(tcl-kb-update 
  :key '(is-a name) 
  :value '(
            (is-a room)
            (name intralogistik_area)
            (speech "intralogistik_area")        
            (size (80000 80000))
            (offset (-40000 -40000))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LOCATIONS
(tcl-kb-update 
  :key '(is-a name) 
  :value '( 
            (is-a location)
            (name 0)
            (speech "home location")
            (approach-type (region))
            (approach-region-pose (0 0 0))
            (approach-region-dist 150)
            (approach-exact-pose (0 0 0))
            (approach-exact-dist 50)
            (approach-exact-safetycl 0)
            (orientation-region (position 1000 0))
            (orientation-exact (position 1000 0))
            (backward-dist 500)))



;; locattion 1
(tcl-kb-update 
  :key '(is-a name) 
  :value '( 
            (is-a location)
            (name 1)
            (speech "station one")
            (approach-type (exact))
            (approach-region-pose (-1210 1220 0))
            (approach-region-dist 150)
            (approach-exact-pose (-1210 1220 0))
            (approach-exact-dist 100)
            (approach-exact-safetycl 0)
            (orientation-region (position -1660 1760))
            (orientation-exact (position -1660 1760))
            (backward-dist 500)))

;; locattion 2
(tcl-kb-update 
  :key '(is-a name) 
  :value '( 
            (is-a location)
            (name 2)
            (speech "station two")
            (approach-type (exact))
            (approach-region-pose (0 0 0))
            (approach-region-dist 150)
            (approach-exact-pose (0 0 0))
            (approach-exact-dist 100)
            (approach-exact-safetycl 0)
            (orientation-region (position 1000 0))
            (orientation-exact (position 1000 0))
            (backward-dist 500)))


;; locattion 3
(tcl-kb-update 
  :key '(is-a name) 
  :value '( 
            (is-a location)
            (name 3)
            (speech "station three")
            (approach-type (exact))
            (approach-region-pose (0 0 0))
            (approach-region-dist 150)
            (approach-exact-pose (0 0 0))
            (approach-exact-dist 100)
            (approach-exact-safetycl 0)
            (orientation-region (position 1000 0))
            (orientation-exact (position 1000 0))
            (backward-dist 500)))


;; locattion 4
(tcl-kb-update 
  :key '(is-a name) 
  :value '( 
            (is-a location)
            (name 4)
            (speech "station four")
            (approach-type (exact))
            (approach-region-pose (0 0 0))
            (approach-region-dist 150)
            (approach-exact-pose (0 0 0))
            (approach-exact-dist 100)
            (approach-exact-safetycl 0)
            (orientation-region (position 1000 0))
            (orientation-exact (position 1000 0))
            (backward-dist 500)))

(defun show-locations ()
  (let ((obj-list     (tcl-kb-query-all :key '(is-a) :value '((is-a location)))))
    (dolist (obj obj-list)
      (format t "~%--------------------------------~%")
      (format t "L O C A T I O N ------------------~%")
      (format t "name                       : ~s ~%" (get-value obj 'name))
      (format t "  type                     : ~s ~%" (get-value obj 'type))
      (format t "  approach-type            : ~s ~%" (get-value obj 'approach-type))
      (format t "  approach-region-pose     : ~s ~%" (get-value obj 'approach-region-pose))
      (format t "  approach-region-dist     : ~s ~%" (get-value obj 'approach-region-dist))
      (format t "  approach-exact-pose      : ~s ~%" (get-value obj 'approach-exact-pose))
      (format t "  approach-exact-dist      : ~s ~%" (get-value obj 'approach-exact-dist))
      (format t "  approach-exact-safetycl  : ~s ~%" (get-value obj 'approach-exact-safetycl))
      (format t "  orientation-region       : ~s ~%" (get-value obj 'orientation-region))
      (format t "  orientation-exact        : ~s ~%" (get-value obj 'orientation-exact))
      (format t "  orientation              : ~s ~%" (get-value obj 'orientation))
      (format t "  station-distance         : ~s ~%" (get-value obj 'station-distance))
      (format t "  belt-count               : ~s ~%" (get-value obj 'belt-count)))))

(defun show-stations ()
  (let ((obj-list     (tcl-kb-query-all :key '(is-a) :value '((is-a station)))))
    (dolist (obj obj-list)
      (format t "~%--------------------------------~%")
      (format t "S T A T I O N --------------------~%")
      (format t "id                         : ~s ~%" (get-value obj 'id))
      (format t "  pose                     : ~s ~%" (get-value obj 'pose))
      (format t "  approach-pose            : ~s ~%" (get-value obj 'approach-pose))
      (format t "  approach-location        : ~s ~%" (get-value obj 'approach-location))
      (format t "  type                     : ~s ~%" (get-value obj 'type)))))

(defun show-station-types ()
  (let ((obj-list     (tcl-kb-query-all :key '(is-a) :value '((is-a station-type)))))
    (dolist (obj obj-list)
      (format t "~%--------------------------------~%")
      (format t "S T A T I O N - T Y P E S --------------------~%")
      (format t "name                         : ~s ~%" (get-value obj 'name))
      (format t "  min-station-width          : ~s ~%" (get-value obj 'min-station-width))
      (format t "  max-station-width          : ~s ~%" (get-value obj 'max-station-width))
      (format t "  offs-bet-center-o-belts    : ~s ~%" (get-value obj 'offset-between-center-of-belts))
      (format t "  offs-left-ref-to-1Belt-cent: ~s ~%" (get-value obj 'offset-left-reflector-to-1stBelt-center))
      (format t "  ir-dock-stop-dist-l2-min   : ~s ~%" (get-value obj 'ir-dock-stop-dist-l2-min))
      (format t "  ir-dock-stop-dist-l2-max   : ~s ~%" (get-value obj 'ir-dock-stop-dist-l2-max))
      (format t "  ir-dock-stop-dist-l1       : ~s ~%" (get-value obj 'ir-dock-stop-dist-l1))
      (format t "  ir-dock-center-sensor-zero : ~s ~%" (get-value obj 'ir-dock-center-sensor-zero))
      (format t "  docking-type               : ~s~%"  (get-value obj 'docking-type))
      (format t "  commincation-type          : ~s~%"  (get-value obj 'commincation-type))
      (format t "  number-of-belts            : ~s~%"  (get-value obj 'number-of-belts))
      (format t "  max-reflector-dist         : ~s~%"  (get-value obj 'max-reflector-dist))
      (format t "  laser-dock-stop-dist       : ~s~%"  (get-value obj 'laser-dock-stop-dist))
      (format t "  description                : ~s ~%" (get-value obj 'description)))))


(defun show-robots ()
  (let ((robot-list (tcl-kb-query-all :key '(is-a) :value '((is-a robot)))))
    (dolist (robot robot-list)
    (format t "~%--------------------------------~%")
    (format t "R O B O T ------------------------~%")
    (format t "  name                   : ~s ~%" (get-value robot 'name))
    (format t "  velocity-travelling    : ~s ~%" (get-value robot 'velocity-travelling))
    (format t "  current-room           : ~s ~%" (get-value robot 'current-room))
    (format t "  curr-s-loc             : ~s ~%" (get-value robot 'current-symbolic-position)))))