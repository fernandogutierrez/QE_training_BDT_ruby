class ClientsManager
	attr_reader :clients
	attr_reader :clients_total_price

	def initialize(clients, clients_t_price)
	    @clients =  clients
        @clients_total_price = clients_t_price    
	end
end

def clients_manager

	clients_l = {1 => "Juan", 2 => "Ana", 3 => "Javier", 
		         4 => "Fernando", 5 => "Ariel"}

    clients_l_total_price = {1 => 12.5, 2 => 4.5, 3 => 12, 
  		                     4 => 65.2, 5 => 35.2}

	@clients_manager ||= ClientsManager.new(clients_l, clients_l_total_price)
end
