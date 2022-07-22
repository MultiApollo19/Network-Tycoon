var id:int
var net_name:String
var maBandwith:float
var miBandwith:float
var ping:float
var userlist:int

func _init(id,networkName:String,maxBandwith:float,minBandwith:float,latency:float,users:int):
    id=id
    net_name=networkName
    maBandwith=maxBandwith
    miBandwith=minBandwith
    ping=latency
    userlist=users
    