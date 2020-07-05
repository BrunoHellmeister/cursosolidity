/*
SPDX-License-Identifier: CC-BY-4.0
(c) Desenvolvido por Bruno Hellmeister
*/
pragma solidity 0.6.10;

// A blockchain poderá garantir a publicidade do procedimento arbitral, conforme Art. 1º da Lei de Arbitragem
contract RequerimentoDeArbitragem 
{
    string public administracaoPublica;
    string public empresaPrivada;
    uint256 private valor;
    //A parte privada deve antecipar as custas arbitrais, conforme Art. 3º, VII, do Decreto Presidencial n8.465/2015
    uint256 private dataDeProtocolo = now;
    bool public statusPagamento;
    address payable public contaCamaraDeArbitragem;

    constructor(string memory nomeAutarquiaPublica, string memory nomeAdministrado, address payable _contaCamaraArb, uint256 valorDaDisputa) public 
    {
        administracaoPublica = nomeAutarquiaPublica;
        empresaPrivada = nomeAdministrado;
        valor = valorDaDisputa;
        contaCamaraDeArbitragem = _contaCamaraArb;
    }
 
    function valorAtualDaDisputa() public view returns (uint256) 
    {
        return valor;
    }

    function pagarCamara() public payable 
    {
        require(msg.value>=valor, "Valor insuficiente");
        contaCamaraDeArbitragem.transfer(msg.value);
        statusPagamento = true;
    }
   
}
