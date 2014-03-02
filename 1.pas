var a,b:longint;

begin 
	assign(input,'input.txt');
	assign(output,'output.txt');
	reset(input);
	rewrite(output);
	read(a,b);
	write(a+b);
	close(output);
end.