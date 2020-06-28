// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.6.10;

contract Franchising {
    
    string public franqueador;
    string public franqueado;
    uint256 private valorFixo;
    uint256 private royaltyFee;
    string public solucaoDeDisputas;
    uint256 private circularDeFranquia;
   
    constructor (
            string memory _franqueador,
            string memory _franqueado,
            uint256 valorDaTaxaMensal,
            uint256 percentualMensal,
            string memory _arbitragem,
            uint256 dataDaCircular
        )
    public 
    {
        franqueador = _franqueador; // Nome da Franqueadora
        franqueado = _franqueado; // Nome da Franqueada
        valorFixo = valorDaTaxaMensal; // Contribuição mensal da franquiada
        royaltyFee = percentualMensal; // Royalty sobre o lucro da franquiada
        solucaoDeDisputas = _arbitragem; // Selecionar Câmara de Arbitragem
        circularDeFranquia = dataDaCircular; //Data de entraga da Circular de Franquia para Art. 3 da Lei de Franquia
    }
    
    function valorAtualFixo () public view returns (uint256) {
        return valorFixo;
    }
    function valorSobreOLucro () public view returns (uint256) {
        return royaltyFee;
    }
    function dataDeEntregaDaCircular () public view returns (uint256) {
        return circularDeFranquia;
    }
     function reajustaPercentualMensal (uint256 percentualReajuste) public
     {
         if (percentualReajuste > 10) //Limite contratual de reajuste da taxa fixa mensal
         {
             percentualReajuste = 10;
         }
         uint256 valorDoAcrescimo = 0;
         valorDoAcrescimo = ((valorFixo*percentualReajuste)/100);
         valorFixo = valorFixo + valorDoAcrescimo;
     }
}
