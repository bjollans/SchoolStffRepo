$personArray = [];

class Person

	attr_accessor :hobbyArray, :name
	def initialize(hobbyArray, name)
		@hobbyArray = hobbyArray;
		@name = name;
		$personArray[$personArray.length] = self;
	end


end


$person1 = Person.new(["Ski","Joggen", "Rad"], "Hans");
$person2 = Person.new(["Rad","Segeln"], "Peter");
$person3 = Person.new(["Schwimmen","Zocken", "Rad", "Joggen"], "Dieter");

def writeSimillarPersons(hobbiesArray)
	

	rank = [];
	hobbyShare = [];
	for i in (0..hobbiesArray.length-1)
		for j in (0..$personArray.length-1)
			hobbyShare[j] = "";
			for m in (0..$personArray[j].hobbyArray.length-1)
				if (hobbiesArray[i].eql? $personArray[j].hobbyArray[m])
					if(rank[j] == nil) then
						rank[j] = 1;
					else
						rank[j] = rank[j] +1;
					end
					hobbyShare[j] = "" + hobbyShare[j] + hobbiesArray[i] + ", ";
				end
			end
		end
	end
	
	for i in (0..rank.length-1)
		j = rank.index(rank.max);
		puts "" + (i+1) + $personArray[j].name + ": " + hobbyShare[j] + "\n";
		rank[j] = -1;
	end

end



def write(array)
	for i in (0..array.length)
		puts array[i];
	end
end

puts "Type in your hobbies";
hobbies = gets.split(",");
writeSimillarPersons(hobbies);
write(hobbies);


