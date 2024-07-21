#!/media/mmcblk0p1/matt/bb

(require '[clojure.java.shell :refer [sh]])

(def router-ip
  (->> (sh "arp" "-a")
       :out
       (re-find #"(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\) at be:3b:a0:55:35:a4")
       second))

(def my-ip
  (->> (sh "ifconfig")
       :out
       (re-find #"inet addr:(192\.168\.\d{1,3}\.\d{1,3})")
       second))

(while true
       (sh "nc" "-w" "0" router-ip "4444" :in my-ip)
       (Thread/sleep 2000))
