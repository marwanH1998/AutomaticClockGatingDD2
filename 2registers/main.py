import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator


rtl = "test.v"
ast,_ = parse([rtl])
# get the root node of the tree (Description)
desc = ast.description
# get the ModuleDef node
definition = desc.definitions[0]
# get the portlist
# loop over all items with type InstanceList
# print the cell ports and their corresponding arguments
newrtl= []
inputlist = []
outputlist= [] 
clkgateArgs = [
 vast.PortArg("GCLK", vast.Identifier("__clockgate_output_gclk_")),
 vast.PortArg("GATE", vast.Identifier("EN")),
 vast.PortArg("CLK", vast.Identifier("CLK"))
]

clkgateArgs2 = [
               vast.PortArg("GCLK", vast.Identifier("__clockgate_output_gclk_1")),
               vast.PortArg("GATE", vast.Identifier("en2")),
               vast.PortArg("CLK", vast.Identifier("CLK"))
               ]

clkgate_cell = vast.Instance(
 "sky130_fd_sc_hd__dlclkp",
 "__clockgate_cell__",
 tuple(clkgateArgs),
 tuple()
)

clkgate_cell2 = vast.Instance(
                             "sky130_fd_sc_hd__dlclkp",
                             "__clockgate_cell__2",
                             tuple(clkgateArgs2),
                             tuple()
                             )
clockgate_output_gclk = vast.Wire('__clockgate_output_gclk_')
clockgate_output_gclk1 = vast.Wire('__clockgate_output_gclk_1')


k=0
enable=[]
flag = True
insertedbefore=0;
newrtl.append(clockgate_output_gclk)
newrtl.append(clockgate_output_gclk1)

for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if(instance.module == "sky130_fd_sc_hd__mux2_1"):
            if insertedbefore ==0:
                newrtl.append(vast.InstanceList("sky130_fd_sc_hd__dlclkp", tuple(), tuple([clkgate_cell])))
                newrtl.append(vast.InstanceList("sky130_fd_sc_hd__dlclkp", tuple(), tuple([clkgate_cell2])))
                insertedbefore=1
            for hook in instance.portlist:
                if hook.portname == "A1": #input
                    inputlist.append(hook.argname)
                if hook.portname == "A0": #output
                    outputlist.append(hook.argname)
                if hook.portname == "S":
                    enable.append(hook.argname)
            continue
        for hook in instance.portlist:
            if hook.portname == "CLK":
                if flag==True:
                    print("change to clk input which is __clockgate_output_gclk_",hook.argname)
                    hook.argname=vast.Identifier('__clockgate_output_gclk_')
                    flag=False
                else:
                    hook.argname=vast.Identifier('__clockgate_output_gclk_1')
            if hook.portname == "D":
                    hook.argname=inputlist[k]
            if hook.portname == "Q":
                    hook.argname=outputlist[k]
        k = k + 1
        print("portname: ", hook.portname, "argname: ", hook.portname)
    newrtl.append(itemDeclaration)


definition.items = tuple(newrtl)
codegen = ASTCodeGenerator()
rslt = codegen.visit(ast)
f = open("testUpdated.v", "w+")
f.write(rslt)
f.close()
