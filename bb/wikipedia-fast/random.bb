;; usage
;; bb random.bb <optional number>

(require '[babashka.http-client :as http]
         '[cheshire.core :as json])

(.mkdir (java.io.File. "links"))

(def url
  "https://en.wikipedia.org/api/rest_v1/page/random/summary")

(defn key-info [i {:keys [description extract content_urls titles]}]
  [i (:normalized titles) description extract (-> content_urls :desktop :page)])

(defn get-article [i]
  (-> (http/get url)
      :body
      (json/parse-string true)
      (->> (key-info i))))

(defn print-article [n]
  (doseq [[i title description extract url] (->> n range (map get-article))]
    (println "***")
    (println title)
    (println description)
    (println extract)
    (spit (str "links/a" i) url)))

(print-article
 (if-let [x (first *command-line-args*)] (Long/parseLong x) 4))
