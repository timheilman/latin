function printOr() {
    printf(" OR ");
}

function tensDigitForChapterNum(chapterNum) {
    return int(chapterNum / 10) == 0 ? "" : int(chapterNum / 10);
}

{
    for(i=0;i<=40;++i) {
	printf("* Chapters 0-%d\n * source:Wheelock (", i);
	num_tens_expr = int((i+1)/10)
	for(remaining_tens = 0; remaining_tens < num_tens_expr; remaining_tens++) {
	    printf("chapter:%s_%s",
		   remaining_tens == 0 ? "" : remaining_tens,
		   remaining_tens < num_tens_expr - 1 || (i+1) % 10 != 0 ? " OR " : "");
	}
	for(j=int((i+1)/10)*10; j<=i; j++) {
	    printf("chapter:%d%s", j, j==i?"":" OR ");
	}
	printf(")\n")
    }
}
