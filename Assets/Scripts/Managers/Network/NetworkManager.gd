extends Node
var networks = {}



func _ready():
	print(getNetworkCount())
	createNetwork("Example network1",10,1,10,2)
	print(getNetworkCount())
	createNetwork("Example network2",10,1,10,2)
	print(getNetworkCount())
	createNetwork("Example network3",10,1,10,2)
	print(getNetworkCount())
	createNetwork("Example network4",10,1,10,2)
	print(getNetworkCount())
	createNetwork("Example network5",10,1,10,2)
	print(getNetworkCount())
	createNetwork("Example network6",10,1,10,2)
	print(getNetworkCount())

	for n in networks.size():
		print(networks[n].net_name)


func createNetwork(network_name:String,maxBandwith:float,minBandwith:float,latency:float,users:int):
	var network = NetworkM.new(getNetworkCount(),network_name,maxBandwith,minBandwith,latency,users)
	networks[getNetworkCount()]=network

func getNetworkCount()->int:
	return networks.size()
