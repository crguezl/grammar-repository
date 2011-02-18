all:
	eyapp -C PLIConflictNested.eyp
	eyapp -P then_else.eyp
	./PLIConflictNested.pm -t -c 'if if=then then then=if'
test:
	./PLIConflictNested.pm -t -c 'if if then then=if'
	./PLIConflictNested.pm -deb -t -c 'if if=then then then=if'
	./PLIConflictNested.pm -t -i -c 'if then=if then if=then'
	./PLIConflictNested.pm -t -c 'if if then if=if'
	
	
