#!/usr/bin/env nextflow
nextflow.enable.dsl=2
process sayHello {
  input:
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}
workflow helloWorld {
  input:
    val x = "Hello"
  call sayHello(x)
}
