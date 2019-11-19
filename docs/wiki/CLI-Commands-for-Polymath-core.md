## CLI for Polymath-core

### Options:
* -V, --version (Outputs the version number)
* -r, --remote-node <network>  (Connecting to a remote node) 
* -h, --help (Output usage information)

### Commands:
1. st20generator|st [options] (Wizard-like script that will guide technical users in the creation and deployment of an ST-20 token)
2. sto_manager|sto [options] (Wizard-like script that will guide technical users in the creation of an STO)
3. faucet|f [beneficiary] [amount] (Poly faucet for local private netwtorks)
4. investor_portal|i [investor] [privateKey] [symbol] [currency] [amount]     (Participate in any STO you have been whitelisted for)
5. token_manager|stm [options] (Manage your Security Tokens, mint tokens, add modules and change configurations) 
6. transfer|t <tokenSymbol> <transferTo> <transferAmount> (Transfer ST tokens to another account)
7. transfer_ownership|to <contractAddress> <transferTo> (Transfer Ownership of an own contract to another account)
8. dividends_manager|dm [dividendsType] (Runs dividends_manager)
9. transfer_manager|tm [options] (Runs transfer_manager)
10. contract_manager|cm (Runs contract_manager)
11. strMigrator|str [options] [toStrAddress] [fromTrAddress] [fromStrAddress] (Runs STR Migrator)
12. permission_manager|pm (Runs permission_manager)
13. time_travel|tt [options] (Increases time on EVM according to given value)
