def palindrome?(string)
st=string.downcase.gsub(/\W+/,"")
if st==st.reverse then return true
else return false
end
end

