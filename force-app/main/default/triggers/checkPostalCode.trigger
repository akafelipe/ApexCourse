/*
 * Trigger name: ShipZipCode
 * Description: Usuario deve obrigatoriamente entrar com oito numeros.
 * Dev: Felipe Siqueira
 * Create Date: 10 de Outubro de 2023
 */

trigger checkPostalCode on Account (before insert) {

    AccountHandler.checkPostalCode(Trigger.new);

}