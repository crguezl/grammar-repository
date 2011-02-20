all:
	eyapp -C PLIConflictNested.eyp
	eyapp -P expr_then.eyp
	./PLIConflictNested.pm -t -c 'if if=then then then=if'
test:
	./PLIConflictNested.pm -t -i -c 'if if then then=if'
	./PLIConflictNested.pm -deb -i -t -c 'if if=then then then=if'
	./PLIConflictNested.pm -t -i -c 'if then=if then if=then'
	./PLIConflictNested.pm -t -i -c 'if if then if=if'
	
	
