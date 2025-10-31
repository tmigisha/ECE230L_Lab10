# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

* Learned how to create a circuit that holds memory through D-latches, demultiplexers, and multiplexers.
* Learned how to use the always function to ensure a value updates when it is supposed to.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
* Because it will result to an error when synthesizing due to a combinatorial loop.

### What is the meaning of always @(*) in a sensitivity block?
* It is used to infinitely run the contents within it based on the parameters within the parentheses.

### What importance is memory to digital circuits?
* It is so that the output can persist even when the input aren't in the circuit anymore. 
