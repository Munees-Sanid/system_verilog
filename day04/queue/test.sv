module queue_operations;

  int q1[$] = '{15, 20, 25, 30};

  int pop1, pop2;
  int sum, product, min_val, max_val;
  int original_array[];
  int red_array[];
  
  initial begin
    $display("Operations");

    q1.push_front(6);
    q1.push_back(11);
    $display("q1 After push operations: %p", q1);

    pop1 = q1.pop_front();
    pop2 = q1.pop_back();
    $display("q1 after pop_front (%2d) and pop_back (%2d): %p", pop1, pop2, q1);

    q1.insert(3, 27);
    $display("q1 after insert at index 3: %p", q1);

    q1.delete(4);
    $display("q1 after delete at index 4: %p", q1);

    $display("q1 size: %0d", q1.size());

    original_array = '{5,3,7,2,6,11};
    $display("Original: %p", original_array);

    original_array.sort();
    $display("Sorted:   %p", original_array);

    original_array.reverse();
    $display("Reversed: %p", original_array);

    original_array.shuffle();
    $display("Shuffled: %p", original_array);

    $display("Array Reduction");

    red_array = '{2, 4, 6, 8};

    sum = 0;
    foreach (red_array[i]) sum += red_array[i];

    product = 1;
    
    foreach (red_array[i]) product *= red_array[i];

    min_val = red_array[0];
    max_val = red_array[0];
    foreach (red_array[i]) begin
      if (red_array[i] < min_val) min_val = red_array[i];
      if (red_array[i] > max_val) max_val = red_array[i];
    end

    $display("Sum: %2d, Product: %2d, Min: %2d, Max: %2d", sum, product, min_val, max_val);
  end

endmodule

