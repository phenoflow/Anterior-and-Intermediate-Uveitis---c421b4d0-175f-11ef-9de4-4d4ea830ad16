cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  anterior-and-intermediate-uveitis-iritis---primary:
    run: anterior-and-intermediate-uveitis-iritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  anterior-and-intermediate-uveitis-subacute---primary:
    run: anterior-and-intermediate-uveitis-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-iritis---primary/output
  anterior-and-intermediate-uveitis-herpe---primary:
    run: anterior-and-intermediate-uveitis-herpe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-subacute---primary/output
  anterior---primary:
    run: anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-herpe---primary/output
  certain-anterior-and-intermediate-uveitis---primary:
    run: certain-anterior-and-intermediate-uveitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: anterior---primary/output
  anterior-and-intermediate-uveitis---primary:
    run: anterior-and-intermediate-uveitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: certain-anterior-and-intermediate-uveitis---primary/output
  chronic-anterior-and-intermediate-uveitis---primary:
    run: chronic-anterior-and-intermediate-uveitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis---primary/output
  anterior-and-intermediate-uveitis-iridocyclitis---primary:
    run: anterior-and-intermediate-uveitis-iridocyclitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chronic-anterior-and-intermediate-uveitis---primary/output
  anterior-and-intermediate-uveitis-hypopyon---primary:
    run: anterior-and-intermediate-uveitis-hypopyon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-iridocyclitis---primary/output
  anterior-and-intermediate-uveitis-unspecified---primary:
    run: anterior-and-intermediate-uveitis-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-hypopyon---primary/output
  secondary-anterior-and-intermediate-uveitis---primary:
    run: secondary-anterior-and-intermediate-uveitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-unspecified---primary/output
  anterior-and-intermediate-uveitis-lensinduced---primary:
    run: anterior-and-intermediate-uveitis-lensinduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: secondary-anterior-and-intermediate-uveitis---primary/output
  anterior-and-intermediate-uveitis-posterior---primary:
    run: anterior-and-intermediate-uveitis-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-lensinduced---primary/output
  anterior-and-intermediate-uveitis-classified---primary:
    run: anterior-and-intermediate-uveitis-classified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-posterior---primary/output
  other-anterior-and-intermediate-uveitis---primary:
    run: other-anterior-and-intermediate-uveitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: anterior-and-intermediate-uveitis-classified---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-anterior-and-intermediate-uveitis---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
