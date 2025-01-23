proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return -code error "Index out of range"
  }
  return [lindex $list $index]
}

set mylist {a b c d}
set result [get_element $mylist 5]

if {[catch {set result [get_element $mylist 5]} msg]} {
  puts "Error: $msg"
} else {
  puts "Element: $result"
}