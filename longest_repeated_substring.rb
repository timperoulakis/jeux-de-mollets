class LongestRepeatedSubstring
  def self.longest_repeated_substring(string)
    (string.size / 2).downto(2) do |n|
      string.chars.each_cons(n) do |sub|
        substr = sub.join
        return substr if string.scan(substr).size > 1
      end
    end

    return ""
  end
end
