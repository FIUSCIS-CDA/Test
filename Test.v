///////////////////////////////////////////////////////////////////////////////////
// Tasks: verifyEqual (1-, 2-, 5-, 32-bit versions)
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2022 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

task verifyEqual;
   input actual;
   input expected;

   begin
      if (actual !== expected)      
      begin 
         $display("[FAIL] Received %b, expected %b", actual, expected);
         $stop;
      end
      else
      begin
         $display("[PASS]");
      end
   end
endtask

task verifyEqual2;
   input [1:0] actual;
   input [1:0] expected;

   begin
      if (actual !== expected)      
      begin 
         $display("[FAIL] Received %b, expected %b", actual, expected);
         $stop;
      end
      else
      begin
         $display("[PASS]");
      end
   end
endtask

task verifyEqual5;
   input [4:0] actual;
   input [4:0] expected;

   begin
      if (actual !== expected)      
      begin 
         $display("[FAIL] Received %b, expected %b", actual, expected);
         $stop;
      end
      else
      begin
         $display("[PASS]");
      end
   end
endtask

task verifyEqual32;
   input [31:0] actual;
   input [31:0] expected;

   begin
      if (actual !== expected)      
      begin 
         $display("[FAIL] Received %b, expected %b", actual, expected);
         $stop;
      end
      else
      begin
         $display("[PASS]");
      end
   end
endtask

task verifyLessEqual32;
   input [31:0] first;
   input [31:0] second;

   begin
      if (first > second)      
      begin 
         $display("[FAIL] first=%b, second=%b", first, second);
         $stop;
      end
      else
      begin
         $display("[PASS]");
      end
   end
endtask
