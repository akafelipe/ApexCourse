/*
 * Trigger name: AccountDuplication
 * Description: Impedir o usuário de inserir uma conta com nome que já existe!
 * Dev: Felipe Siqueira
 * Create Date: 05 de Outubro de 2023
 */

 trigger AccountDuplication on Account (before insert) {
    AccountHandler.preventAccNameDuplication(Trigger.new);
}
