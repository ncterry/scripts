-- Comment
-- This is a simple example of a sort function


-- =========================================
function sort (a,b)
	if a > b then
		return a
	else
		return b
	end
end
-- =========================================

print("Enter two numbers:")
a = io.read()
b = io.read()
print(sort(a,b))
