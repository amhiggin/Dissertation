# Local DMZ bridge network to which all containers are connected
create_dmz_net() {
	# Define the network 
        network_exists=$( docker network ls | grep "dmz" ) 
        if [[ -n "$network_exists" ]] ; then
                echo "DMZ network defined"
        else
                echo "Creating DMZ network (10.0.0.0/8)"
                docker network create -d bridge \
                --subnet 10.0.0.0/8 \
                --attachable \
                dmz
        fi
}
