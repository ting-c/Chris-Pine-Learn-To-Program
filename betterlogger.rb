$nesting_depth = 0
$space = ' '

def log someProc, &block
puts $space*$nesting_depth + 'Beginning "'+someProc+'" ...'
$nesting_depth = $nesting_depth + 1
value_returned = block.call
$nesting_depth = $nesting_depth - 1
puts $space*$nesting_depth + '... "'+someProc+'" finished, returning:  '+ value_returned.to_s

end

log 'outer block' do

log 'some little block' do

log 'teeny-tiny block' do
'lots of love'
end

42
end

log 'yet another block' do
'I love Indian food!'
end

true
end