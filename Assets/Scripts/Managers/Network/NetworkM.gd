extends Object
class_name NetworkM
var id:int
var net_name:String
var maBandwith:float
var miBandwith:float
var ping:float
var userlist:int

func _init(network_id:int,networkName:String,maxBandwith:float,minBandwith:float,latency:float,users:int):
    id=network_id
    net_name=networkName
    maBandwith=maxBandwith
    miBandwith=minBandwith
    ping=latency
    userlist=users
    