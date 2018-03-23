#DigitalOcean DNS Update

cur_dir=$(pwd)
token=$(cat $cur_dir/do-secret)
my_ip=$(curl -s icanhazip.com)
my_domain="shareanddave.com"
sub_domain="home"
sub_id="36542535"
update_val="'{\"data\":\"$my_ip\"}'"
update_api_url="https://api.digitalocean.com/v2/domains/$my_domain/records/$sub_id"
content_header="\"Content-Type: application/json\""
#auth_header="\"Authorization: Bearer $token\""
auth_header="Authorization: Bearer $token"

all_records()
{
	#Get all domain records
	echo "=== All Domain Records ==="
	#curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $token" "https://api.digitalocean.com/v2/domains/$my_domain/records" 2>/dev/null
	curl -s -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $token" "https://api.digitalocean.com/v2/domains/$my_domain/records" 
	echo "=========================="
	echo
}

one_record()
{
	#Get "home" record
	echo "=== Specific Domain Records ==="
	#curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $token" "https://api.digitalocean.com/v2/domains/$my_domain/records/$sub_id" 2>/dev/null
	curl -s -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $token" "https://api.digitalocean.com/v2/domains/$my_domain/records/$sub_id"
	echo "=========================="
	echo
}

#Set Record
echo "=== Set Domain Record ==="
echo
echo
#echo curl -X PUT -H "Content-Type: application/json" -H "Authorization: Bearer $token" -d $update_val "https://api.digitalocean.com/v2/domains/$my_domain/records/$sub_id"
curl -X PUT -H "$content_header" -H "$auth_header" -d $update_val $update_api_url
echo
echo

