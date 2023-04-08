# Subnet Scanner

A simple bash script to scan a subnet and return live hosts and open ports.

## Usage

To use the Subnet Scanner, simply run the script and provide the subnet you want to scan as a command-line argument. For example:

````
./attack.sh <Class C subnet>
````
 
This will scan the `<Class C subnet>`  and return a list of live hosts and open ports.

## Dependencies

The Subnet Scanner requires the following tools to be installed:

- nmap

## Giving Permissions

Before running the Subnet Scanner, you need to give execute permission to the bash scripts. To do this, navigate to the directory containing the scripts and run the following commands:
```
chmod +x attack.sh
chmod +x checker.sh
chmod +x ping.sh
chmod +x print1.sh
```


## Output

The Subnet Scanner will output a list of live hosts and open ports for the specified subnet. The output will be in the following format:

```
Live Host: 192.168.1.1
Open Ports: 22
~~~~~~~~~~~~~~~~~~~~~
Live Host: 192.168.1.2
Open Ports: 443

```


## Contributing

Contributions to the Subnet Scanner are welcome! If you find a bug or have an idea for a new feature, please open an issue or submit a pull request.

## License

The Subnet Scanner is licensed under the [MIT License](https://opensource.org/licenses/MIT).

