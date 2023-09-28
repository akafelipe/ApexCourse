public with sharing class DoceriaHandler {
    public static void cadastraCliente(string nome, integer fone, string cidade) {
        if(nome != null && cidade != null){
            system.debug(nome+ ', bem vindo a Doceria!');
        }else{
            system.debug('Favor preencher os campos Nome & Cidade');
        }
    }
}