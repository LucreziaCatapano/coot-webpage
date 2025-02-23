

;; electron density looks better if it's a bit smoother, so jack up
;; the sampling rate a bit...
(set-map-sampling-rate 2.2)

;; now read the map (you mtz probably won't be called xxx.mtz).
(make-and-draw-map "xxx.mtz" "FWT" "PHWT" "" 0 0)

(let ((imol (read-pdb "test.pdb")))

  ;; my ligand is residue 1 in the C chain:
  (dots imol "//C/1" 1 1)
  (make-ball-and-stick imol "//C/1" 0.2 0.3 1))


