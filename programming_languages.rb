require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash={}
  languages.each do |sty, langs|
    langs.each do |lang, type|
      if sty == :functional && lang == :javascript
        
        new_hash[lang][:style].push(sty)
        
      else
        new_hash[lang]=type
        new_hash[lang][:style]=[sty]
      end
    end
  end
  new_hash
end

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
# }

# new1=reformat_languages(languages)
# puts new1