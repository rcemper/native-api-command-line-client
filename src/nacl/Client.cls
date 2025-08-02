Class nacl.Client
{

ClassMethod Connect(serverIP = "192.168.0.11", serverPORT = 61773, namespace = "USER", username = "_SYSTEM", password = "SYS") As %Net.DB.Iris
{
  try {
    set %rccon=##class(%Net.DB.DataSource).CreateConnection(serverIP,
                                serverPORT,
                                namespace,
                                username,
                                password)
    set %rccdb=%rccon.CreateIris()
    }
  catch { zw  b  }  ;; do some error handling
  quit $g(%rccdb)
}

ClassMethod Do(request As %String, rccdb As %Net.DB.Iris = {%rccdb}) As %String
{
 
  set req=request_"  quit 0"   
  set res=rccdb.ClassMethodValue("%ZX.nacl","x",req)
  quit res
}

ClassMethod Zv(rccdb As %Net.DB.Iris = {%rccdb}) As %String
{
 
  quit rccdb.ClassMethodValue("%ZX.nacl","zv")
}

ClassMethod Function(request As %String, rccdb As %Net.DB.Iris = {%rccdb}) As %String
{
  set req=request_"  quit 0"   
  set res=rccdb.Function("%ZX","x",req)
  quit res
}

}
