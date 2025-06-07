module tb;

  string str1, str2;
  string concat_str;
  int char_code;
  byte ch;

  initial begin
    str1 = "shanid";
    str2 = "iiitb";

    $display(str1);
    $display(str2);

    $display(str1.len());
    $display(str2.len());

    str1 = str1.toupper();    // assign back the uppercase string
    $display(str1);

    concat_str = {str1, "_", str2};
    $display(concat_str);

    char_code = str2.getc(2);
    $display(char_code);

    str2.putc(0, "F");
    $display(str2);

    ch = str1.getc(1);
    $display(ch);

    str1.putc(1, "Z");
    $display(str1);
  end

endmodule

